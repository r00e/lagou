$SpecifiedNum = @{"3"="Fizz"; "5"="Buzz"; "7"="Whizz"}

function Say($num){
    $result=""

    $SpecifiedNum.keys | sort | ?{ $num % $_ -eq 0} | %{ $SpecifiedNum[$_] } | %{ $result += $_ }

    if($result -eq ""){
        $result = $num
    }

    return $result
}