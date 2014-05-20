$SpecifiedNum = @{"3"="Fizz"; "5"="Buzz"; "7"="Whizz"}

function Say($num){
    $result = [string]::join('', @($SpecifiedNum.keys | sort | ?{ $num % $_ -eq 0} | %{ $SpecifiedNum[$_] }) )

    if($result){
        return $result
    }

    return $num
}