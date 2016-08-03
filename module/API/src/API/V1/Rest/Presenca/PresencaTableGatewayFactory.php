<?php

/**
 * Created by PhpStorm.
 * User: joaopaulo
 * Date: 09/01/16
 * Time: 00:59
 */

namespace API\V1\Rest\Presenca;

use Zend\Db\ResultSet\HydratingResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;
use Zend\Stdlib\Hydrator\ClassMethods;

class PresencaTableGatewayFactory implements FactoryInterface {

    /**
     * Create service
     *
     * @param ServiceLocatorInterface $serviceLocator
     * @return mixed
     */
    public function createService(ServiceLocatorInterface $serviceLocator) {
        $dbAdapter = $serviceLocator->get('DbAdapter');
        $hydrator = new HydratingResultSet(new ClassMethods(), new PresencaEntity());

        $tableGateway = new TableGateway('presencaEvento', $dbAdapter, null, $hydrator);

        return $tableGateway;
    }

}
