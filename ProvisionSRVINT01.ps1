Configuration SRVINT01Cfg {

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    Node 'localhost' {

        # The first resource block ensures that the ADDSTools are   enabled.
        WindowsFeature ADDSTools {
            Ensure = "Present"
            Name   = "RSAT-ADDS-Tools"
            DependsOn = "[WindowsFeature]ADDSInstall"
        }



    }
}
