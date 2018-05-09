# Version="1.0.0.0"
# Product="" 　　　
# Copyright="Kenji Oshio" 
# Company=""

Configuration FolderConfig
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration 

    Node localhost
    {
       #該当Windowsマシンに指定した名前でFolder作成します。
       File FolderConfiguration
       {
            Type = 'Directory'
            DestinationPath = 'Y:\Sonar\oshio'
            Ensure = "Present"
            #Ensure = "Absent"
       }
    }
}

FolderConfig　-OutputPath .\FolderConfig
Start-DscConfiguration -Wait -Force -Verbose -Path .\FolderConfig -ComputerName Localhost