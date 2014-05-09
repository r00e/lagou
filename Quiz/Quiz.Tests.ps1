$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\Quiz.ps1"

Describe "Quiz" {

    It "should return True if the number is times of 3" {
        NumberIsTimesOf3 3 | Should Be $True
    }

	It "should return False if the number is NOT times of 3" {
		NumberIsTimesOf3 1 | Should Be $False
	}

    It "should return True if the number is times of 5" {
        NumberIsTimesOf5 5 | Should Be $True
    }
}
