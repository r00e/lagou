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
        return $num;
    }
}