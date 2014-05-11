$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\Quiz.ps1"

Describe "Quiz" {

    It "should return number itself" {
        Say 1 | Should Be 1
    }

    It "should return Fizz for the times of 3"{
        Say 3 | Should Be "Fizz"
    }    
}
