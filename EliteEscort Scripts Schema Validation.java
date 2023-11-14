//Validacion de la coleccion de clientes    
{
  $jsonSchema: {
    bsonType: 'object',
    required: [
      'nombre',
      'apellido',
      'contacto'
    ],
    properties: {
      nombre: {
        bsonType: 'string',
        description: 'Nombre del individuo'
      },
      apellido: {
        bsonType: 'string',
        description: 'Apellido del individuo'
      },
      contacto: {
        bsonType: 'object',
        required: [
          'direccion',
          'telefono',
          'direccion_correo'
        ],
        properties: {
          direccion: {
            bsonType: 'string',
            description: 'Dirección del individuo'
          },
          telefono: {
            bsonType: 'int',
            description: 'Número de teléfono del individuo'
          },
          direccion_correo: {
            bsonType: 'string',
            description: 'Dirección de correo electrónico del individuo'
          }
        }
      }
    }
  }
}
//Validacion de la coleccion del vehiculo
{
  $jsonSchema: {
    bsonType: 'object',
    required: [
      '_id_vehiculo',
      'matricula',
      'caracteristicas'
    ],
    properties: {
      _id_vehiculo: {
        bsonType: 'objectId',
        description: 'Identificador único del vehículo'
      },
      matricula: {
        bsonType: 'string',
        pattern: '^[A-Z]{3}-[0-9]{3}$',
        description: 'Número de matrícula del vehículo en el formato ABC-123'
      },
      caracteristicas: {
        bsonType: 'object',
        required: [
          'marca',
          'modelo'
        ],
        properties: {
          marca: {
            bsonType: 'string',
            description: 'Marca del vehículo'
          },
          modelo: {
            bsonType: 'string',
            description: 'Modelo del vehículo'
          }
        }
      }
    }
  }
}
//validacion de la coleccion del guardaespaldas
{
  $jsonSchema: {
    bsonType: 'object',
    required: [
      '_id_guardaespalda',
      'nombre',
      'apellido',
      'correo_electronico',
      'calificacion',
      'sede',
      'turnos'
    ],
    properties: {
      _id_guardaespalda: {
        bsonType: 'objectId',
        description: 'Identificador único del guardaespaldas'
      },
      nombre: {
        bsonType: 'string',
        description: 'Nombre del guardaespaldas'
      },
      apellido: {
        bsonType: 'string',
        description: 'Apellido del guardaespaldas'
      },
      correo_electronico: {
        bsonType: 'string',
        description: 'Dirección de correo electrónico del guardaespaldas'
      },
      calificacion: {
        bsonType: 'int',
        minimum: 1,
        maximum: 5,
        description: 'Calificación del guardaespaldas (rango de 1 a 5)'
      },
      sede: {
        bsonType: 'object',
        required: [
          'direccion',
          'hora_inicio_atencion',
          'hora_fin_atencion'
        ],
        properties: {
          direccion: {
            bsonType: 'string',
            description: 'Dirección de la sede del guardaespaldas'
          },
          hora_inicio_atencion: {
            bsonType: 'date',
            description: 'Hora de inicio de atención en la sede'
          },
          hora_fin_atencion: {
            bsonType: 'date',
            description: 'Hora de fin de atención en la sede'
          }
        }
      },
      turnos: {
        bsonType: 'array',
        minItems: 1,
        items: {
          bsonType: 'object',
          required: [
            'nombre_turno',
            'hora_inicio',
            'hora_fin'
          ],
          properties: {
            nombre_turno: {
              bsonType: 'string',
              description: 'Nombre del turno'
            },
            hora_inicio: {
              bsonType: 'date',
              description: 'Hora de inicio del turno'
            },
            hora_fin: {
              bsonType: 'date',
              description: 'Hora de fin del turno'
            }
          }
        }
      }
    }
  }
}
//validacion de la coleccion de las solicitudes
{
  $jsonSchema: {
    bsonType: 'object',
    required: [
      '_id_solicitud',
      'fecha_inicio',
      'fecha_fin',
      'servicio',
      'id_cliente',
      'id_vehiculo',
      'guardaespaldas'
    ],
    properties: {
      _id_solicitud: {
        bsonType: 'objectId',
        description: 'Identificador único de la solicitud'
      },
      fecha_inicio: {
        bsonType: 'date',
        description: 'Fecha y hora de inicio de la solicitud'
      },
      fecha_fin: {
        bsonType: 'date',
        description: 'Fecha y hora de fin de la solicitud'
      },
      servicio: {
        bsonType: 'string',
        description: 'Tipo de servicio solicitado'
      },
      id_cliente: {
        bsonType: 'string',
        description: 'Identificador único del cliente'
      },
      id_vehiculo: {
        anyOf: [
          {
            bsonType: 'string',
            description: 'Identificador único del vehículo'
          },
          {
            type: 'null',
            description: 'La propiedad puede ser nula'
          }
        ]
      },
      guardaespaldas: {
        bsonType: 'array',
        minItems: 1,
        items: {
          bsonType: 'object',
          required: [
            '_id_guardaespalda',
            'nombre',
            'apellido'
          ],
          properties: {
            _id_guardaespalda: {
              bsonType: 'string',
              description: 'Identificador único del guardaespaldas'
            },
            nombre: {
              bsonType: 'string',
              description: 'Nombre del guardaespaldas'
            },
            apellido: {
              bsonType: 'string',
              description: 'Apellido del guardaespaldas'
            }
          }
        }
      }
    }
  }
}