fun fatAux( number | accumulator ) =
    if number == 0
    then accumulator
    else fatAux( number - 1 | accumulator * number ),

fun fat( number ) =
    fatAux( number | 1)