function Say($num){
    $result = SayFizzForTimesOf3($num)
    return $result
}

function SayFizzForTimesOf3($num){
    if(IsTimesOf3($num)){
        return "Fizz"
    }
    else{
        return $num
    }
}

function IsTimesOf3($num){
    if( ($num % 3) -eq 0){
        return $true
    }
    else{
        return $false
    }
}