$SpecifiedNum = @{"3"="Fizz"; "5"="Buzz"; "7"="Whizz"}

function Say($num){
    return TransferNumIfNeeded($num)
}

function TransferNumIfNeeded($num){
    $result=""

    $SpecifiedNum.keys | sort | %{ $result += GetStringForTimesofSpecifiedNumber $num $_}

    if($result -eq ""){
        $result = $num
    }

    return $result
}

function GetStringForTimesofSpecifiedNumber($num, $spec){
    if(IsTimesOfSpecifiedNubmer $num $_){
        return $SpecifiedNum[$_]
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