function NumberIsTimesOfSpecified ($num, $specified){
    if($num % $specified -eq 0){
        return $true;
    }
    else{
        return $false;
    }
}

function SayFizz($num) {
    if(NumberIsTimesOfSpecified -num $num -specified 3){
        return "Fizz";
    }
    else{
        return $null;
    }
}

function SayBuzz($num) {
    if(NumberIsTimesOfSpecified -num $num -specified 5){
        return "Buzz";
    }
    else{
        return $null;
    }
}

function SayWhizz($num) {
    if(NumberIsTimesOfSpecified -num $num -specified 7){
        return "Whizz";
    }
    else{
        return $null;
    }
}

function Say($num) {
    $str = "";
    
    $str = $str + (SayFizz $num) + (SayBuzz $num) + (SayWhizz $num);

    return $str;
}