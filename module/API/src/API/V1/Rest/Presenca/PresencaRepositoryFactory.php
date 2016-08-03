<?php
/**
 * Created by PhpStorm.
 * User: joaopaulo
 * Date: 09/01/16
 * Time: 01:05
 */

namespace API\V1\Rest\Presenca;


use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;

class PresencaRepositoryFactory implements FactoryInterface
{

    /**
     * Create service
     *
     * @param ServiceLocatorInterface $serviceLocator
     * @return mixed
     */
    public function createService(ServiceLocatorInterface $serviceLocator)
    {
        $tableGatway =  $serviceLocator->get('API\\V1\\Rest\\Presenca\\PresencaTableGateway');

        $convidadoTableGatway =  $serviceLocator->get('API\\V1\\Rest\\Convidado\\ConvidadoTableGateway');

        return new PresencaRepository($tableGatway, $convidadoTableGatway );
    }
}