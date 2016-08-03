<?php

namespace API\V1\Rest\Presenca;

class PresencaEntity {

    /**
     * @var integer
     */
    protected $id;

    /**
     * @var integer
     */
    protected $evento_id;

    /**
     * @var string
     */
    protected $evento_nome;

    /**
     * @var integer
     */
    protected $convidado_id;

    /**
     * @var string
     */
    protected $convidado_nome;

    /**
     * @var string
     */
    protected $nome;

    /**
     * @var string
     */
    protected $tipo_convidado;

    /**
     * @var integer
     */
    protected $grupo_id;

    /**
     * @var string
     */
    protected $grupo_nome;

    /**
     * @var boolean
     */
    protected $confirnado= false;

    /**
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;
        return $this;
    }

    /**
     * @return int
     */
    public function getEventoId()
    {
        return $this->evento_id;
    }

    /**
     * @param int $evento_id
     * @return PresencaEntity
     */
    public function setEventoId($evento_id)
    {
        $this->evento_id = $evento_id;
        return $this;
    }

    /**
     * @return string
     */
    public function getEventoNome()
    {
        return $this->evento_nome;
    }

    /**
     * @param string $evento_nome
     * @return PresencaEntity
     */
    public function setEventoNome($evento_nome)
    {
        $this->evento_nome = $evento_nome;
        return $this;
    }

    /**
     * @return int
     */
    public function getConvidadoId()
    {
        return $this->convidado_id;
    }

    /**
     * @param int $convidado_id
     * @return PresencaEntity
     */
    public function setConvidadoId($convidado_id)
    {
        $this->convidado_id = $convidado_id;

        return $this;
    }

    /**
     * @return string
     */
    public function getNome()
    {
        return $this->nome;
    }

    /**
     * @param string $nome
     * @return PresencaEntity
     */
    public function setNome($nome)
    {
        $this->nome = $nome;
        return $this;
    }

    /**
     * @return string
     */
    public function getConvidadoNome()
    {
        //return $this->isConfirnado() ? '$this->convidado_nome' : '$this->nome';
        return !empty($this->convidado_nome) ? $this->convidado_nome : $this->nome;
    }

    /**
     * @param string $convidado_nome
     * @return PresencaEntity
     */
    public function setConvidadoNome($convidado_nome)
    {
        $this->convidado_nome = $convidado_nome;
        return $this;
    }

    /**
     * @return string
     */
    public function getTipoConvidado()
    {
        switch($this->tipo_convidado){
            case 'A': return 'Adulto';
            case 'C': return 'Criança';

            default: return $this->tipo_convidado;

        }
    }

    /**
     * @param string $tipo_convidado
     * @return PresencaEntity
     */
    public function setTipoConvidado($tipo_convidado)
    {
        $this->tipo_convidado = $tipo_convidado;
        return $this;
    }

    /**
     * @return int
     */
    public function getGrupoId()
    {
        return $this->grupo_id;
    }

    /**
     * @param int $grupo_id
     * @return PresencaEntity
     */
    public function setGrupoId($grupo_id)
    {
        $this->grupo_id = $grupo_id;
        return $this;
    }

    /**
     * @return string
     */
    public function getGrupoNome()
    {
        return $this->grupo_nome;
    }

    /**
     * @param string $grupo_nome
     * @return PresencaEntity
     */
    public function setGrupoNome($grupo_nome)
    {
        $this->grupo_nome = $grupo_nome;
        return $this;
    }

    /**
     * @return boolean
     */
    public function isConfirnado()
    {
        return !empty($this->id);
    }

    /**
     * @param boolean $confirnado
     * @return PresencaEntity
     */
    public function setConfirnado($confirnado)
    {
        $this->confirnado = $confirnado;
        return $this;
    }


}
