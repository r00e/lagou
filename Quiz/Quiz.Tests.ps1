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
        SayFizz 5 | Should Be 5
    }
}
