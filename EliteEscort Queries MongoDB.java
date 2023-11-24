db.solicitudes.aggregate([
    {
        $group: {
            _id: "$servicio",
            cantidad: { $sum: 1 }
        }
    }
]);
{
  _id: 'Acompañamiento personal',
  cantidad: 1
}
{
  _id: 'Monitoreo de seguridad',
  cantidad: 1
}
{
  _id: 'Seguridad en eventos',
  cantidad: 1
}
{
  _id: 'Patrullaje nocturno',
  cantidad: 1
}
{
  _id: 'Cuidado de vivienda',
  cantidad: 1
}
db.guardaespaldas.aggregate([
    {
        $lookup: {
            from: "solicitudes",
            localField: "_id_guardaespalda",
            foreignField: "guardaespaldas._id_guardaespalda",
            as: "solicitudes"
        }
    },
    {
        $unwind: "$sede.direccion"
    },
    {
        $group: {
            _id: "$sede.direccion",
            promedio_calificacion: { $avg: "$calificacion" }
        }
    }
]);
{
  _id: 'Av. Grau 789, Trujillo',
  promedio_calificacion: 3
}
{
  _id: 'Av. Arequipa 123, Lima',
  promedio_calificacion: 5
}
{
  _id: 'Calle Lima 456, Arequipa',
  promedio_calificacion: 4
}
