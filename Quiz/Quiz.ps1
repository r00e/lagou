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
    
    if( (NumberIsTimesOfSpecified -num $num -specified 3) -or (NumberIsTimesOfSpecified -num $num -specified 5) -or (NumberIsTimesOfSpecified -num $num -specified 7) ) {
        $str = $str + (SayFizz $num) + (SayBuzz $num) + (SayWhizz $num);
        return $str;
    }
    else{
        return $num;
    }
}