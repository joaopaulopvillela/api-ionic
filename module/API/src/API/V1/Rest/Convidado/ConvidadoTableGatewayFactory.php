<?php

/**
 * Created by PhpStorm.
 * User: joaopaulo
 * Date: 16/03/16
 * Time: 02:14
 */

namespace API\V1\Rest\Convidado;

use Zend\Db\ResultSet\HydratingResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;
use Zend\Stdlib\Hydrator\ClassMethods;

class ConvidadoTableGatewayFactory implements FactoryInterface {

    /**
     * Create service
     *
     * @param ServiceLocatorInterface $serviceLocator
     * @return mixed
     */
    public function createService(ServiceLocatorInterface $serviceLocator) {
        $dbAdapter = $serviceLocator->get('DbAdapter');
        $hydrator = new HydratingResultSet(new ClassMethods(), new ConvidadoEntity());

        $tableGateway = new TableGateway('convidado', $dbAdapter, null, $hydrator);

        return $tableGateway;
    }

}
