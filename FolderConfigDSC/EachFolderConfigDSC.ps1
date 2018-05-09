# Version="1.0.0.0"
# Product="" 　　　
# Copyright="Kenji Oshio" 
# Company=""


Configuration SetFolderConfigDSC
{
 	Import-DscResource -ModuleName PSDesiredStateConfiguration 
	
	Node localhost
    {
		#Create a folder according to cofigunration data.
		foreach ($folder in ($AllNodes.FolderStructure)) 
		{

			File $folder.Name
			{
				Type = $folder.Type
				DestinationPath = $folder.Path
				Ensure = $folder.Ensure
			}		
		}
    }
}

SetFolderConfigDSC　-OutputPath .\SetFolderConfigMOF -ConfigurationData .\FolderConfigDSC\ConfiguraionData.psd1
Start-DscConfiguration -Wait -Force -Verbose -Path .\SetFolderConfigMOF -ComputerName Localhost