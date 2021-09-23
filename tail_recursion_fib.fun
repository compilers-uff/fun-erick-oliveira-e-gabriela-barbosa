fun fibAux( number | currentExec | currentValue ) =
    if number == 0 then currentExec
    else    
        if number == 1 then currentValue
        else fibAux( number - 1 | currentValue | currentExec + currentValue ),

fun fib(number) =
    fibAux( number | 0 | 1 )