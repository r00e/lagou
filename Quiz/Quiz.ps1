$first = "3"
$second = "5"
$third = "7"
$SpecifiedNum = @{"$first"="Fizz"; "$second"="Buzz"; "$third"="Whizz"}

function Say($num){
    if($num -like "*$first*"){
        return $SpecifiedNum["$first"];
    }

    $result = [string]::join('', @($SpecifiedNum.keys | sort | ?{ $num % $_ -eq 0} | %{ $SpecifiedNum[$_] }) );

    if($result){
        return $result;
    }

    return $num;
}

