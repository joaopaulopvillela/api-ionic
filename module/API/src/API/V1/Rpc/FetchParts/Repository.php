<?php

namespace API\V1\Rpc\FetchParts;

use Exception;
use Zend\Db\Adapter\Adapter;

class Repository {

    /**
     * @var Adapter
     */
    private $dbAdapter;

    /**
     * ProductsRepository constructor.
     */
    public function __construct(Adapter $dbAdapter) {
        $this->dbAdapter = $dbAdapter;
    }

    public function getParts($entity) {

        $query = $this->dbAdapter->query($this->getSql($entity));

        return $query->execute();
    }

    protected function getSql($entity) {
        
        switch ($entity) {
            case 'grupoConvidado': return 'SELECT id, descricao as label FROM grupoConvidado';
            case 'convidado': return 'SELECT id, nome as label FROM convidado';
            case 'evento': return 'SELECT id, descricao as label FROM evento';

            default:
                throw new Exception("A entity '{$entity}' não possui fetchParts!");
        }
        
    }

}
