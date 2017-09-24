#define MyAppName "Jaba MUD Client"
#define MyAppVersion "3.7.1.7"
#define MyAppPublisher "muders"
#define MyAppURL "https://github.com/Rrahh/jmc/releases"
#define MyAppExeName "jmc.exe"

[Setup]
AppId={{2AE92D66-7E22-47FC-918D-104C148B355A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
;InfoBeforeFile=C:\Users\RUMATA\Documents\GitHub\jmc\sources\changelog.txt
OutputBaseFilename=jmc_setup_{#MyAppVersion}
OutputDir=.
Compression=lzma
SolidCompression=yes
SetupIconFile=jmc_main_icon.ico
VersionInfoVersion={#MyAppVersion}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\html.log.template"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\jmc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\language.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\recore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\ttcoreex.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\ttcoreex.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\wolfssl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\zlib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\help\*"; DestDir: "{app}\help"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\ttcoreex.bat"; Parameters: "/s"; Flags: nowait
