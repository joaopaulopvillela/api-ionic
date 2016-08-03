<?php
namespace API\V1\Rest\Presenca;

class PresencaResourceFactory
{
    public function __invoke($services)
    {
         $repository = $services->get('Api\\V1\\Rest\\Presenca\\PresencaRepository');

        return new PresencaResource($repository);
    }
}
