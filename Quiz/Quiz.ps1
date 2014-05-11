function Say($num){
    $result = SayStringForTimesOfSpecifiedNumber($num)
    return $result
}

function SayStringForTimesOfSpecifiedNumber($num){
    if(IsTimesOfSpecifiedNubmer -num $num -spec 3){
        return "Fizz"
    }
    if(IsTimesOfSpecifiedNubmer -num $num -spec 5){
        return "Buzz"
    }
    if(IsTimesOfSpecifiedNubmer -num $num -spec 7){
        return "Whizz"
    }
    else{
        return $num
    }
}

function IsTimesOfSpecifiedNubmer($num, $spec){
    if($num % $spec -eq 0){
        return $true
    }
    else{
        return $false
    }
}