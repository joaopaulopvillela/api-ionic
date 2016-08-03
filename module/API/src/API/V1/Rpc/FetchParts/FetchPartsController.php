<?php

namespace API\V1\Rpc\FetchParts;

use Exception;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\JsonModel;
use ZF\ApiProblem\ApiProblem;
use ZF\ApiProblem\ApiProblemResponse;

class FetchPartsController extends AbstractActionController {

    public function fetchPartsAction() {

        try {

            $entity = $this->params('entity');

            if (empty($entity)) {
                throw new Exception('Entity não foi localizada', 404);
            }

            $data = array();
            
            /* @var $dbAdapter \Zend\Db\Adapter\Adapter */
            $dbAdapter = $this->serviceLocator->get('DbAdapter');
            
            $repository = new Repository($dbAdapter);
            
            return new JsonModel( $repository->getParts($entity) );
        } catch (Exception $ex) {

            return new ApiProblemResponse(
                    new ApiProblem($ex->getCode(), $ex->getMessage())
            );
        }
    }

}
