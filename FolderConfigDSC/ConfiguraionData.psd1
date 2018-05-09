@{
    AllNodes = @(
        @{
            NodeName = "localhost"

            FolderStructure = @(
                @{
                    Name = 'SWDR1'
					Type = 'Directory'
					Path =   "c:\ODIN\T0001\SWDR1"
                    Ensure = "Present"
                },
 
				@{
                    Name = 'SWDR2'
                    Type = 'Directory'
					Path =   "c:\ODIN\T0001\SWDR2"
                    Ensure = "Present"
                },

				@{
                    Name = 'SWDR3'
                    Type = 'Directory'
					Path =   "c:\ODIN\T0001\SWDR3"
                    Ensure = "Present"
                }

            ) #FolderStruture = @(...

        } # localhost
    ) # AllNodes = @(...
}