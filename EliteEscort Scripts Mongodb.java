db.clientes.insertMany([
  {
    "_id": ObjectId(),
    "nombre": "Maria",
    "apellido": "Gomez",
    "contacto": {
      "direccion": "Calle Principal 456, Arequipa",
      "telefono": 987654321,
      "direccion_correo": "maria.gomez@email.com"
    }
  },
  {
    "_id": ObjectId(),
    "nombre": "Carlos",
    "apellido": "Rodriguez",
    "contacto": {
      "direccion": "Jirón Bolivar 789, Trujillo",
      "telefono": 945678901,
      "direccion_correo": "carlos.rodriguez@email.com"
    }
  },
  {
    "_id": ObjectId(),
    "nombre": "Ana",
    "apellido": "Lopez",
    "contacto": {
      "direccion": "Avenida Amazonas 567, Iquitos",
      "telefono": 912345678,
      "direccion_correo": "ana.lopez@email.com"
    }
  },
  {
    "_id": ObjectId(),
    "nombre": "Pedro",
    "apellido": "Martinez",
    "contacto": {
      "direccion": "Jirón Pizarro 890, Chiclayo",
      "telefono": 923456789,
      "direccion_correo": "pedro.martinez@email.com"
    }
  }
]);

db.vehiculos.insertMany([
  {
    "_id_vehiculo": ObjectId(),
    "matricula": "ABC-123",
    "caracteristicas": {
      "marca": "Toyota",
      "modelo": "Corolla"
    }
  },
  {
    "_id_vehiculo": ObjectId(),
    "matricula": "DEF-456",
    "caracteristicas": {
      "marca": "Ford",
      "modelo": "Mustang"
    }
  },
  {
    "_id_vehiculo": ObjectId(),
    "matricula": "GHI-789",
    "caracteristicas": {
      "marca": "Chevrolet",
      "modelo": "Cruze"
    }
  },
  {
    "_id_vehiculo": ObjectId(),
    "matricula": "JKL-012",
    "caracteristicas": {
      "marca": "Honda",
      "modelo": "Civic"
    }
  },
  {
    "_id_vehiculo": ObjectId(),
    "matricula": "MNO-345",
    "caracteristicas": {
      "marca": "Nissan",
      "modelo": "Altima"
    }
  }
]);
db.guardaespaldas.insertMany([
  {
    "_id_guardaespalda": ObjectId(),
    "nombre": "Juan",
    "apellido": "Perez",
    "correo_electronico": "juan.perez@email.com",
    "calificacion": 5,
    "sede": {
      "direccion": "Av. Arequipa 123, Lima",
      "hora_inicio_atencion": ISODate("2023-11-13T08:30:00Z"),
      "hora_fin_atencion": ISODate("2023-11-13T14:30:00Z")
    },
    "turnos": [
      {
        "nombre_turno": "turno_mañana",
        "hora_inicio": ISODate("2023-11-13T08:00:00Z"),
        "hora_fin": ISODate("2023-11-13T11:00:00Z")
      },
      {
        "nombre_turno": "turno_tarde",
        "hora_inicio": ISODate("2023-11-13T11:00:00Z"),
        "hora_fin": ISODate("2023-11-13T15:00:00Z")
      }
    ]
  },
   {
    "_id_guardaespalda": ObjectId(),
    "nombre": "Maria",
    "apellido": "Gomez",
    "correo_electronico": "maria.gomez@email.com",
    "calificacion": 4,
    "sede": {
      "direccion": "Calle Lima 456, Arequipa",
      "hora_inicio_atencion": ISODate("2023-11-14T09:00:00Z"),
      "hora_fin_atencion": ISODate("2023-11-14T15:00:00Z")
    },
    "turnos": [
      {
        "nombre_turno": "turno_mañana",
        "hora_inicio": ISODate("2023-11-14T08:30:00Z"),
        "hora_fin": ISODate("2023-11-14T12:30:00Z")
      },
      {
        "nombre_turno": "turno_tarde",
        "hora_inicio": ISODate("2023-11-14T13:30:00Z"),
        "hora_fin": ISODate("2023-11-14T17:30:00Z")
      }
    ]
  },
  {
    "_id_guardaespalda": ObjectId(),
    "nombre": "Carlos",
    "apellido": "Rodriguez",
    "correo_electronico": "carlos.rodriguez@email.com",
    "calificacion": 3,
    "sede": {
      "direccion": "Av. Grau 789, Trujillo",
      "hora_inicio_atencion": ISODate("2023-11-15T08:00:00Z"),
      "hora_fin_atencion": ISODate("2023-11-15T14:00:00Z")
    },
    "turnos": [
      {
        "nombre_turno": "turno_mañana",
        "hora_inicio": ISODate("2023-11-15T07:30:00Z"),
        "hora_fin": ISODate("2023-11-15T11:30:00Z")
      },
      {
        "nombre_turno": "turno_tarde",
        "hora_inicio": ISODate("2023-11-15T12:30:00Z"),
        "hora_fin": ISODate("2023-11-15T16:30:00Z")
      }
    ]
  },
  {
    "_id_guardaespalda": ObjectId(),
    "nombre": "Ana",
    "apellido": "Lopez",
    "correo_electronico": "ana.lopez@email.com",
    "calificacion": 5,
    "sede": {
      "direccion": "Calle Amazonas 567, Iquitos",
      "hora_inicio_atencion": ISODate("2023-11-16T08:30:00Z"),
      "hora_fin_atencion": ISODate("2023-11-16T14:30:00Z")
    },
    "turnos": [
      {
        "nombre_turno": "turno_mañana",
        "hora_inicio": ISODate("2023-11-16T08:00:00Z"),
        "hora_fin": ISODate("2023-11-16T12:00:00Z")
      },
      {
        "nombre_turno": "turno_tarde",
        "hora_inicio": ISODate("2023-11-16T13:00:00Z"),
        "hora_fin": ISODate("2023-11-16T17:00:00Z")
      }
    ]
  },
  {
    "_id_guardaespalda": ObjectId(),
    "nombre": "Pedro",
    "apellido": "Martinez",
    "correo_electronico": "pedro.martinez@email.com",
    "calificacion": 4,
    "sede": {
      "direccion": "Av. Pizarro 890, Chiclayo",
      "hora_inicio_atencion": ISODate("2023-11-17T09:00:00Z"),
      "hora_fin_atencion": ISODate("2023-11-17T15:00:00Z")
    },
    "turnos": [
      {
        "nombre_turno": "turno_mañana",
        "hora_inicio": ISODate("2023-11-17T08:30:00Z"),
        "hora_fin": ISODate("2023-11-17T12:30:00Z")
      },
      {
        "nombre_turno": "turno_tarde",
        "hora_inicio": ISODate("2023-11-17T13:30:00Z"),
        "hora_fin": ISODate("2023-11-17T17:30:00Z")
      }
    ]
  }
]);
