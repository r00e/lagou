$SpecifiedNum = @{"3"="Fizz"; "5"="Buzz"; "7"="Whizz"}

function Say($num){
    if($num -like '*3*'){
        $num = 3;
    }

    $result = [string]::join('', @($SpecifiedNum.keys | sort | ?{ $num % $_ -eq 0} | %{ $SpecifiedNum[$_] }) );
    # $SpecifiedNum.keys | sort | ?{ ( ($num -like '*3*') -or ($num % $_ -eq 0) } | %{ write-host $_ }

    if($result){
        return $result;
    }

    return $num;
}

# Say 35