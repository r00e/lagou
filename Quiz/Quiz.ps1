$SpecifiedNum = @{"3"="Fizz"; "5"="Buzz"; "7"="Whizz"}

function Say($num){
    if($num -like '*3*'){
        return $SpecifiedNum["3"];
    }

    $result = [string]::join('', @($SpecifiedNum.keys | sort | ?{ $num % $_ -eq 0} | %{ $SpecifiedNum[$_] }) );

    if($result){
        return $result;
    }

    return $num;
}