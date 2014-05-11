$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\Quiz.ps1"

Describe "Quiz" {

    It "should return number itself" {
        Say 1 | Should Be 1
    }

    It "should return Fizz for the times of 3"{
        Say 3 | Should Be "Fizz"
    }

    It "should return Buzz for the times of 5"{
        Say 5 | Should Be "Buzz"
    }

    It "should return Whizz for the times of 7"{
        Say 7 | Should Be "Whizz"
    }

    It "should return FizzBuzz for the times of both 3 and 5"{
        Say 15 | Should Be "FizzBuzz"
    }   

    It "should return FizzWhizz for the times of both 3 and 7"{
        Say 21 | Should Be "FizzWhizz"
    }    

    It "should return BuzzWhizz for the times of both 5 and 7"{
        Say 35 | Should Be "BuzzWhizz"
    }    

    It "should return FizzBuzzWhizz for the times of both 3, 5 and 7"{
        Say 105 | Should Be "FizzBuzzWhizz"
    }    
}
