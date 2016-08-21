data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo

agenda ::Dia -> String
agenda Domingo = "Tv..."
agenda Sabado = "Festa"
agenda _ = "Trabalho"

