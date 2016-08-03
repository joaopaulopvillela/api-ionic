<?php
/**
 * @license   http://opensource.org/licenses/BSD-3-Clause BSD-3-Clause
 * @copyright Copyright (c) 2014 Zend Technologies USA Inc. (http://www.zend.com)
 */

namespace Application;

use Zend\Mvc\ModuleRouteListener;
use Zend\Mvc\MvcEvent;
use Zend\Uri\UriFactory;

class Module
{
     public function onBootstrap(MvcEvent $e)
    {
        $eventManager        = $e->getApplication()->getEventManager();
        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);

        UriFactory::registerScheme('chrome-extension', 'Zend\Uri\Uri');

        $headers = $e->getRequest()->getHeaders();
        if ($headers->has('Origin') &&
            $headers->has('X-Requested-With') &&
            $headers->get('X-Requested-With')->getFieldValue() === 'com.ionicframework.meusconvidados657249') {
            //convert to array because get method throw an exception
            $headersArray = $headers->toArray();
            $origin = $headersArray['Origin'];
            if ($origin === 'file://') {
                unset($headersArray['Origin']);
                $headers->clearHeaders();
                $headers->addHeaders($headersArray);
                //this is a valid uri
                $headers->addHeaderLine('Origin', 'file://mobile');
            }
        }
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }

    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }
}
