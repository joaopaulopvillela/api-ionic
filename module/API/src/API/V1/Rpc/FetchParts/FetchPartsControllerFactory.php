<?php
namespace API\V1\Rpc\FetchParts;

class FetchPartsControllerFactory
{
    public function __invoke($controllers)
    {
        return new FetchPartsController();
    }
}
