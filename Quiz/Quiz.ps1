function Say($num){
    return TransferNumIfNeeded($num)
}

function TransferNumIfNeeded($num){
    $result=""

    $result += GetStringForTimesof3($num)
    $result += GetStringForTimesof5($num)
    $result += GetStringForTimesof7($num)

    if($result -eq ""){
        $result = $num
    }

    return $result
}

function IsTimesOfSpecifiedNubmer($num, $spec){
    if($num % $spec -eq 0){
        return $spec
    }
    else{
        return $false
    }
}

function GetStringForTimesof3($num){
    if(IsTimesOfSpecifiedNubmer -num $num -spec 3){
        return "Fizz"
    }
}

function GetStringForTimesof5($num){
    if(IsTimesOfSpecifiedNubmer -num $num -spec 5){
        return "Buzz"
    }
}

function GetStringForTimesof7($num){
    if(IsTimesOfSpecifiedNubmer -num $num -spec 7){
        return "Whizz"
    }
}