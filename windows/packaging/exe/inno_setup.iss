[Setup]
AppId=B9F6E402-0CAE-4045-BDE6-14BD6C39C4EA
AppVersion=1.11.2+24
AppName=Popkin player
AppPublisher=ashish7411
AppPublisherURL=https://github.com/ashish7411/Popkin-player
AppSupportURL=https://github.com/ashish7411/Popkin-player
AppUpdatesURL=https://github.com/ashish7411/Popkin-player
DefaultDirName={autopf}\Popkinplayer
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=Popkinplayer-1.11.2
Compression=lzma
SolidCompression=yes
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
WizardStyle=modern
PrivilegesRequired=lowest
LicenseFile=..\..\LICENSE
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\build\windows\x64\runner\Release\Popkinplayer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Popkin player"; Filename: "{app}\Popkinplayer.exe"
Name: "{autodesktop}\Popkin player"; Filename: "{app}\Popkinplayer.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Popkinplayer.exe"; Description: "{cm:LaunchProgram,{#StringChange('Popkin player', '&', '&&')}}"; Flags: nowait postinstall skipifsilent
