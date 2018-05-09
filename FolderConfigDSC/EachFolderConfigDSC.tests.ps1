$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'. "$here\$sut"

Describe ":Check whether all folder are created correctly or not." {
	Context ":Check Folder structure" {
		It "'SWDR1' should be exist in 'c:\ODIN\T0001'." {
		  "C:\ODIN\T0001\SWDR1" | Should Exist
		}
		It "'SWDR2' should be exist in 'c:\ODIN\T0001'." {
		  "C:\ODIN\T0001\SWDR2" | Should Exist
		}
		It "'SWDR3' should be exist in 'c:\ODIN\T0001'." {
		  "C:\ODIN\T0001\SWDR3" | Should Exist
		}
		#This test case should be failed because 'SWDR4' is not created.
		It "'SWDR4' should be exist in 'c:\ODIN\T0001'." {
		  "C:\ODIN\T0001\SWDR4" | Should Exist
		}
	}
}