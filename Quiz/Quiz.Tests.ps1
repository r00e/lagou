$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\Quiz.ps1"

Describe "Quiz" {

    It "should return True if the number is times of 3" {
        NumberIsTimesOfSpecified -num 3 -specified 3 | Should Be $True
    }

	It "should return False if the number is NOT times of 3" {
		NumberIsTimesOfSpecified -num 7 -specified 3 | Should Be $False
	}

    It "should return True if the number is times of 5" {
        NumberIsTimesOfSpecified -num 10 -specified 5 | Should Be $True
    }

    It "should return False if the number is NOT times of 5" {
        NumberIsTimesOfSpecified -num 3 -specified 5 | Should Be $False
    }

    It "should return True if the number is times of 7" {
        NumberIsTimesOfSpecified -num 14 -specified 7 | Should Be $True
    }

    It "should return False if the number is NOT times of 5" {
        NumberIsTimesOfSpecified -num 27 -specified 7 | Should Be $False
    }

    It "should return Fizz if the number is times of 3" {
        SayFizz 3 | Should Be "Fizz"
    }

    It "should return number if the number is NOT times of 3" {
        SayFizz 5 | Should Be $null
    }

    It "should return Buzz if the number is times of 5" {
        SayBuzz 35 | Should Be "Buzz"
    }

    It "should return number if the number is NOT times of 5" {
        SayBuzz 12 | Should Be $null
    }

    It "should return Whizz if the number is times of 7" {
        SayWhizz 7 | Should Be "Whizz"
    }

    It "should return number if the number is NOT times of 7" {
        SayWhizz 100 | Should Be $null
    }

    It "should return FizzBuzz if the number is both times of 3 and 5" {
        Say 30 | Should Be "FizzBuzz"
    }

    It "should return FizzWhizz if the number is both times of 3 and 7" {
        Say 42 | Should Be "FizzWhizz"
    }

    It "should return BuzzWhizz if the number is both times of 5 and 7" {
        Say 35 | Should Be "BuzzWhizz"
    }

    It "should return FizzBuzzWhizz if the number is all times of 3, 5 and 7" {
        Say 105 | Should Be "FizzBuzzWhizz"
    }

    It "should return Fizz if the number is only times of 3" {
        Say 24 | Should Be "Fizz"
    }
}
