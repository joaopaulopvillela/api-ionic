<?php
/**
 * Created by PhpStorm.
 * User: joaopaulo
 * Date: 09/01/16
 * Time: 00:58
 */

namespace API\V1\Rest\Presenca;

use Zend\Db\Sql\Expression;
use Zend\Db\Sql\Select;
use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Paginator\Adapter\DbTableGateway;
use Zend\Paginator\Adapter\ArrayAdapter;
use Zend\Db\ResultSet\HydratingResultSet;
use Zend\Stdlib\Hydrator\ClassMethods;

class PresencaRepository
{
    /**
     * @var AbstractTableGateway
     */
    private $tableGateway;

    /**
     * @var AbstractTableGateway
     */
    private $convidadoTableGateway;

    /**
     * PresencaRepository constructor.
     */
    public function __construct(AbstractTableGateway $tableGateway, AbstractTableGateway $convidadoTableGateway)
    {
        $this->tableGateway = $tableGateway;
        $this->convidadoTableGateway = $convidadoTableGateway;
    }

    public function findAll($evento_id)
    {
        $sql = $this->convidadoTableGateway->getSql()->select();

        $sql->columns(array('nome','tipo_convidado', 'convidado_id' => 'id','evento_id' ));

        if( !empty($evento_id) ) {
            $sql->where
                ->equalTo('convidado.evento_id', $evento_id)
                ->OR->equalTo('presencaEvento.evento_id',$evento_id);
        }

        $sql->join( 'presencaEvento',
                   new Expression('presencaEvento.convidado_id = convidado.id OR presencaEvento.convidado_id IS NULL'),
                    [ 'nome_convidado' , 'id', 'tipo_convidado_2' => 'tipo_convidado'],
                    Select::JOIN_LEFT
        );

        $sql->join('evento',
            'convidado.evento_id = evento.id' ,
            ['evento_nome' => 'descricao'  ]
        );

        $sql->join('grupoConvidado',
            'convidado.grupo_convidado_id = grupoConvidado.id' ,
            ['grupo_nome' => 'descricao', 'grupo_id' => 'id' ]
        );

        $dbAdapter = $this->tableGateway->getAdapter();

        //var_dump($sql->getSqlString());die();

        $result  = $this->tableGateway->selectWith($sql);


        $array = array();

        $hydrator = new ClassMethods();

        /* @var $presenca API\V1\Rest\Presenca\PresencaEntity */
        foreach($result as $presenca):

            //var_dump( $presenca->getConvidadoNome() );

            array_push($array, $hydrator->extract($presenca));
        endforeach;

        $arrayAdapter = new ArrayAdapter($array);
        $res = new PresencaCollection($arrayAdapter);

        return $res;

    }
}