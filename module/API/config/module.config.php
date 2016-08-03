<?php
return array(
    'router' => array(
        'routes' => array(
            'api.rest.grupo-convidado' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/grupo-convidado[/:grupo_convidado_id]',
                    'defaults' => array(
                        'controller' => 'API\\V1\\Rest\\GrupoConvidado\\Controller',
                    ),
                ),
            ),
            'api.rest.evento' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/evento[/:evento_id]',
                    'defaults' => array(
                        'controller' => 'API\\V1\\Rest\\Evento\\Controller',
                    ),
                ),
            ),
            'api.rpc.fetch-parts' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/fetchparts[/:entity]',
                    'defaults' => array(
                        'controller' => 'API\\V1\\Rpc\\FetchParts\\Controller',
                        'action' => 'fetchParts',
                    ),
                ),
            ),
            'api.rest.presenca' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/presenca[/:presenca_id]',
                    'defaults' => array(
                        'controller' => 'API\\V1\\Rest\\Presenca\\Controller',
                    ),
                ),
            ),
            'api.rest.presenca-evento' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/presenca-evento[/:presenca_evento_id]',
                    'defaults' => array(
                        'controller' => 'API\\V1\\Rest\\PresencaEvento\\Controller',
                    ),
                ),
            ),
            'api.rest.convidado' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/convidado[/:convidado_id]',
                    'defaults' => array(
                        'controller' => 'API\\V1\\Rest\\Convidado\\Controller',
                    ),
                ),
            ),
        ),
    ),
    'zf-versioning' => array(
        'uri' => array(
            0 => 'api.rest.grupo-convidado',
            3 => 'api.rest.evento',
            4 => 'api.rpc.fetch-parts',
            6 => 'api.rest.presenca',
            7 => 'api.rest.presenca-evento',
            8 => 'api.rest.convidado',
        ),
    ),
    'zf-rest' => array(
        'API\\V1\\Rest\\GrupoConvidado\\Controller' => array(
            'listener' => 'API\\V1\\Rest\\GrupoConvidado\\GrupoConvidadoResource',
            'route_name' => 'api.rest.grupo-convidado',
            'route_identifier_name' => 'grupo_convidado_id',
            'collection_name' => 'grupo_convidado',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'API\\V1\\Rest\\GrupoConvidado\\GrupoConvidadoEntity',
            'collection_class' => 'API\\V1\\Rest\\GrupoConvidado\\GrupoConvidadoCollection',
            'service_name' => 'grupoConvidado',
        ),
        'API\\V1\\Rest\\Evento\\Controller' => array(
            'listener' => 'API\\V1\\Rest\\Evento\\EventoResource',
            'route_name' => 'api.rest.evento',
            'route_identifier_name' => 'evento_id',
            'collection_name' => 'evento',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'API\\V1\\Rest\\Evento\\EventoEntity',
            'collection_class' => 'API\\V1\\Rest\\Evento\\EventoCollection',
            'service_name' => 'evento',
        ),
        'API\\V1\\Rest\\Presenca\\Controller' => array(
            'listener' => 'API\\V1\\Rest\\Presenca\\PresencaResource',
            'route_name' => 'api.rest.presenca',
            'route_identifier_name' => 'presenca_id',
            'collection_name' => 'presenca',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'API\\V1\\Rest\\Presenca\\PresencaEntity',
            'collection_class' => 'API\\V1\\Rest\\Presenca\\PresencaCollection',
            'service_name' => 'presenca',
        ),
        'API\\V1\\Rest\\PresencaEvento\\Controller' => array(
            'listener' => 'API\\V1\\Rest\\PresencaEvento\\PresencaEventoResource',
            'route_name' => 'api.rest.presenca-evento',
            'route_identifier_name' => 'presenca_evento_id',
            'collection_name' => 'presenca_evento',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'API\\V1\\Rest\\PresencaEvento\\PresencaEventoEntity',
            'collection_class' => 'API\\V1\\Rest\\PresencaEvento\\PresencaEventoCollection',
            'service_name' => 'presencaEvento',
        ),
        'API\\V1\\Rest\\Convidado\\Controller' => array(
            'listener' => 'API\\V1\\Rest\\Convidado\\ConvidadoResource',
            'route_name' => 'api.rest.convidado',
            'route_identifier_name' => 'convidado_id',
            'collection_name' => 'convidado',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'API\\V1\\Rest\\Convidado\\ConvidadoEntity',
            'collection_class' => 'API\\V1\\Rest\\Convidado\\ConvidadoCollection',
            'service_name' => 'convidado',
        ),
    ),
    'zf-content-negotiation' => array(
        'controllers' => array(
            'API\\V1\\Rest\\GrupoConvidado\\Controller' => 'HalJson',
            'API\\V1\\Rest\\Evento\\Controller' => 'HalJson',
            'API\\V1\\Rpc\\FetchParts\\Controller' => 'Json',
            'API\\V1\\Rest\\Presenca\\Controller' => 'HalJson',
            'API\\V1\\Rest\\PresencaEvento\\Controller' => 'HalJson',
            'API\\V1\\Rest\\Convidado\\Controller' => 'HalJson',
        ),
        'accept_whitelist' => array(
            'API\\V1\\Rest\\GrupoConvidado\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'API\\V1\\Rest\\Evento\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'API\\V1\\Rpc\\FetchParts\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
                2 => 'application/*+json',
            ),
            'API\\V1\\Rest\\Presenca\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'API\\V1\\Rest\\PresencaEvento\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'API\\V1\\Rest\\Convidado\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
        ),
        'content_type_whitelist' => array(
            'API\\V1\\Rest\\GrupoConvidado\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
            ),
            'API\\V1\\Rest\\Evento\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
            ),
            'API\\V1\\Rpc\\FetchParts\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
            ),
            'API\\V1\\Rest\\Presenca\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
            ),
            'API\\V1\\Rest\\PresencaEvento\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
            ),
            'API\\V1\\Rest\\Convidado\\Controller' => array(
                0 => 'application/vnd.api.v1+json',
                1 => 'application/json',
            ),
        ),
    ),
    'zf-hal' => array(
        'metadata_map' => array(
            'API\\V1\\Rest\\GrupoConvidado\\GrupoConvidadoEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.grupo-convidado',
                'route_identifier_name' => 'grupo_convidado_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'API\\V1\\Rest\\GrupoConvidado\\GrupoConvidadoCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.grupo-convidado',
                'route_identifier_name' => 'grupo_convidado_id',
                'is_collection' => true,
            ),
            'API\\V1\\Rest\\Evento\\EventoEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.evento',
                'route_identifier_name' => 'evento_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'API\\V1\\Rest\\Evento\\EventoCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.evento',
                'route_identifier_name' => 'evento_id',
                'is_collection' => true,
            ),
            'API\\V1\\Rest\\Presenca\\PresencaEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.presenca',
                'route_identifier_name' => 'presenca_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'API\\V1\\Rest\\Presenca\\PresencaCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.presenca',
                'route_identifier_name' => 'presenca_id',
                'is_collection' => true,
            ),
            'API\\V1\\Rest\\PresencaEvento\\PresencaEventoEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.presenca-evento',
                'route_identifier_name' => 'presenca_evento_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'API\\V1\\Rest\\PresencaEvento\\PresencaEventoCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.presenca-evento',
                'route_identifier_name' => 'presenca_evento_id',
                'is_collection' => true,
            ),
            'API\\V1\\Rest\\Convidado\\ConvidadoEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.convidado',
                'route_identifier_name' => 'convidado_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'API\\V1\\Rest\\Convidado\\ConvidadoCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'api.rest.convidado',
                'route_identifier_name' => 'convidado_id',
                'is_collection' => true,
            ),
        ),
    ),
    'zf-apigility' => array(
        'db-connected' => array(
            'API\\V1\\Rest\\GrupoConvidado\\GrupoConvidadoResource' => array(
                'adapter_name' => 'DbAdapter',
                'table_name' => 'grupoConvidado',
                'hydrator_name' => 'Zend\\Hydrator\\ArraySerializable',
                'controller_service_name' => 'API\\V1\\Rest\\GrupoConvidado\\Controller',
                'entity_identifier_name' => 'id',
            ),
            'API\\V1\\Rest\\Evento\\EventoResource' => array(
                'adapter_name' => 'DbAdapter',
                'table_name' => 'evento',
                'hydrator_name' => 'Zend\\Hydrator\\ArraySerializable',
                'controller_service_name' => 'API\\V1\\Rest\\Evento\\Controller',
                'entity_identifier_name' => 'id',
            ),
            'API\\V1\\Rest\\PresencaEvento\\PresencaEventoResource' => array(
                'adapter_name' => 'DbAdapter',
                'table_name' => 'presencaEvento',
                'hydrator_name' => 'Zend\\Hydrator\\ArraySerializable',
                'controller_service_name' => 'API\\V1\\Rest\\PresencaEvento\\Controller',
                'entity_identifier_name' => 'id',
            ),
            'API\\V1\\Rest\\Convidado\\ConvidadoResource' => array(
                'adapter_name' => 'DbAdapter',
                'table_name' => 'convidado',
                'hydrator_name' => 'Zend\\Hydrator\\ArraySerializable',
                'controller_service_name' => 'API\\V1\\Rest\\Convidado\\Controller',
                'entity_identifier_name' => 'id',
            ),
        ),
    ),
    'zf-content-validation' => array(
        'API\\V1\\Rest\\GrupoConvidado\\Controller' => array(
            'input_filter' => 'API\\V1\\Rest\\GrupoConvidado\\Validator',
        ),
        'API\\V1\\Rest\\Evento\\Controller' => array(
            'input_filter' => 'API\\V1\\Rest\\Evento\\Validator',
        ),
        'API\\V1\\Rest\\PresencaEvento\\Controller' => array(
            'input_filter' => 'API\\V1\\Rest\\PresencaEvento\\Validator',
        ),
        'API\\V1\\Rest\\Convidado\\Controller' => array(
            'input_filter' => 'API\\V1\\Rest\\Convidado\\Validator',
        ),
    ),
    'input_filter_specs' => array(
        'API\\V1\\Rest\\GrupoConvidado\\Validator' => array(
            0 => array(
                'name' => 'descricao',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '150',
                        ),
                    ),
                ),
            ),
            1 => array(
                'name' => 'data_cadastro',
                'required' => false,
                'filters' => array(),
                'validators' => array(),
                'continue_if_empty' => false,
            ),
        ),
        'API\\V1\\Rest\\PresencaEvento\\Validator' => array(
            0 => array(
                'name' => 'nome_convidado',
                'required' => false,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '150',
                        ),
                    ),
                ),
            ),
            1 => array(
                'name' => 'tipo_convidado',
                'required' => false,
                'filters' => array(),
                'validators' => array(),
            ),
            2 => array(
                'name' => 'convidado_id',
                'required' => false,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\Digits',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'ZF\\ContentValidation\\Validator\\DbRecordExists',
                        'options' => array(
                            'adapter' => 'DbAdapter',
                            'table' => 'convidado',
                            'field' => 'id',
                        ),
                    ),
                ),
            ),
            3 => array(
                'name' => 'evento_id',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\Digits',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'ZF\\ContentValidation\\Validator\\DbRecordExists',
                        'options' => array(
                            'adapter' => 'DbAdapter',
                            'table' => 'evento',
                            'field' => 'id',
                        ),
                    ),
                ),
            ),
            4 => array(
                'name' => 'data_cadastro',
                'required' => false,
                'filters' => array(),
                'validators' => array(),
                'continue_if_empty' => true,
            ),
        ),
        'API\\V1\\Rest\\Convidado\\Validator' => array(
            0 => array(
                'name' => 'nome',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '255',
                        ),
                    ),
                ),
            ),
            1 => array(
                'name' => 'grupo_convidado_id',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\Digits',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'ZF\\ContentValidation\\Validator\\DbRecordExists',
                        'options' => array(
                            'adapter' => 'DbAdapter',
                            'table' => 'grupoConvidado',
                            'field' => 'id',
                        ),
                    ),
                ),
            ),
            2 => array(
                'name' => 'evento_id',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\Digits',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'ZF\\ContentValidation\\Validator\\DbRecordExists',
                        'options' => array(
                            'adapter' => 'DbAdapter',
                            'table' => 'evento',
                            'field' => 'id',
                        ),
                    ),
                ),
            ),
            3 => array(
                'name' => 'tipo_convidado',
                'required' => true,
                'filters' => array(),
                'validators' => array(),
            ),
            4 => array(
                'name' => 'data_cadastro',
                'required' => false,
                'filters' => array(),
                'validators' => array(),
            ),
        ),
        'API\\V1\\Rest\\Evento\\Validator' => array(
            0 => array(
                'name' => 'descricao',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '255',
                        ),
                    ),
                ),
            ),
            1 => array(
                'name' => 'cliente_nome',
                'required' => false,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '255',
                        ),
                    ),
                ),
            ),
            2 => array(
                'name' => 'cliente_email',
                'required' => true,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '150',
                        ),
                    ),
                    1 => array(
                        'name' => 'Zend\\Validator\\EmailAddress',
                        'options' => array(
                            'message' => 'Valor informar valor valido de E-mail',
                        ),
                    ),
                ),
            ),
            3 => array(
                'name' => 'cliente_telefone',
                'required' => false,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '12',
                        ),
                    ),
                ),
            ),
            4 => array(
                'name' => 'cliente_endereco',
                'required' => false,
                'filters' => array(
                    0 => array(
                        'name' => 'Zend\\Filter\\StringTrim',
                    ),
                    1 => array(
                        'name' => 'Zend\\Filter\\StripTags',
                    ),
                ),
                'validators' => array(
                    0 => array(
                        'name' => 'Zend\\Validator\\StringLength',
                        'options' => array(
                            'min' => 1,
                            'max' => '255',
                        ),
                    ),
                ),
            ),
            5 => array(
                'name' => 'data_evento',
                'required' => true,
                'filters' => array(),
                'validators' => array(),
            ),
            6 => array(
                'name' => 'finalizado',
                'required' => true,
                'filters' => array(),
                'validators' => array(),
            ),
            7 => array(
                'name' => 'data_cadastro',
                'required' => false,
                'filters' => array(),
                'validators' => array(),
            ),
        ),
    ),
    'service_manager' => array(
        'factories' => array(
            'API\\V1\\Rest\\Presenca\\PresencaResource' => 'API\\V1\\Rest\\Presenca\\PresencaResourceFactory',
            'API\\V1\\Rest\\Presenca\\PresencaTableGateway' => 'API\\V1\\Rest\\Presenca\\PresencaTableGatewayFactory',
            'API\\V1\\Rest\\Presenca\\PresencaRepository' => 'API\\V1\\Rest\\Presenca\\PresencaRepositoryFactory',
            'API\\V1\\Rest\\Convidado\\ConvidadoTableGateway' => 'API\\V1\\Rest\\Convidado\\ConvidadoTableGatewayFactory',
        ),
    ),
    'controllers' => array(
        'factories' => array(
            'API\\V1\\Rpc\\FetchParts\\Controller' => 'API\\V1\\Rpc\\FetchParts\\FetchPartsControllerFactory',
        ),
    ),
    'zf-rpc' => array(
        'API\\V1\\Rpc\\FetchParts\\Controller' => array(
            'service_name' => 'fetchParts',
            'http_methods' => array(
                0 => 'GET',
            ),
            'route_name' => 'api.rpc.fetch-parts',
        ),
    ),
    'zf-mvc-auth' => array(
        'authorization' => array(
            'API\\V1\\Rest\\Convidado\\Controller' => array(
                'collection' => array(
                    'GET' => true,
                    'POST' => true,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => true,
                    'PATCH' => true,
                    'DELETE' => true,
                ),
            ),
            'API\\V1\\Rest\\Evento\\Controller' => array(
                'collection' => array(
                    'GET' => true,
                    'POST' => true,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => true,
                    'PATCH' => true,
                    'DELETE' => true,
                ),
            ),
            'API\\V1\\Rest\\GrupoConvidado\\Controller' => array(
                'collection' => array(
                    'GET' => true,
                    'POST' => true,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => true,
                    'PATCH' => true,
                    'DELETE' => true,
                ),
            ),
            'API\\V1\\Rest\\Presenca\\Controller' => array(
                'collection' => array(
                    'GET' => true,
                    'POST' => true,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => true,
                    'PATCH' => true,
                    'DELETE' => true,
                ),
            ),
            'API\\V1\\Rest\\PresencaEvento\\Controller' => array(
                'collection' => array(
                    'GET' => true,
                    'POST' => true,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => true,
                    'PATCH' => true,
                    'DELETE' => true,
                ),
            ),
            'API\\V1\\Rpc\\FetchParts\\Controller' => array(
                'actions' => array(
                    'fetchParts' => array(
                        'GET' => true,
                        'POST' => false,
                        'PUT' => false,
                        'PATCH' => false,
                        'DELETE' => false,
                    ),
                ),
            ),
        ),
    ),
);
