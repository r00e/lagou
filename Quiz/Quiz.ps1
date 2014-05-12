function Say($num){
    return TransferNumIfNeeded($num)
}

function TransferNumIfNeeded($num){
    $result=""

    @(3, 5, 7) | %{ $result += GetStringForTimesofSpecifiedNumber -num $num -spec $_}

    if($result -eq ""){
        $result = $num
    }

    return $result
}

function GetStringForTimesofSpecifiedNumber($num, $spec){
    switch($spec){
        3 { if(IsTimesOfSpecifiedNubmer -num $num -spec 3){ return "Fizz" } }
        5 { if(IsTimesOfSpecifiedNubmer -num $num -spec 5){ return "Buzz" } }
        7 { if(IsTimesOfSpecifiedNubmer -num $num -spec 7){ return "Whizz" } }
    }
}

function IsTimesOfSpecifiedNubmer($num, $spec){
    if($num % $spec -eq 0){
        return $spec
    }
    else{
        return $false
    }
}