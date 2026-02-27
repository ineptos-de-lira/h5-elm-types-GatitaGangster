module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


evaluarNota : Float -> GradeStatus
evaluarNota nota =
    if nota < 0 then
        Pending

    else if nota >= 7 then
        Approved

    else
        Failed


categoricalGrade : List Float -> List GradeStatus
categoricalGrade listaDeNotas =
    List.map evaluarNota listaDeNotas



-->  E2


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction estado =
    case estado of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction listaCadenas =
    List.map airplaneScheduleAction listaCadenas
