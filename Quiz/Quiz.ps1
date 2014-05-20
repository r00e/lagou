$SpecifiedNum = @{"3"="Fizz"; "5"="Buzz"; "7"="Whizz"}

function Say($num){
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
    return $num % $spec -eq 0
}