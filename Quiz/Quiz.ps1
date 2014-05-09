function NumberIsTimesOfSpecified ($num, $specified){
    if($num % $specified -eq 0){
        return $true;
    }
    else{
        return $false;
    }
}
