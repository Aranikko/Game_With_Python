; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Geomtry Dash 2.2"
#define MyAppVersion "1"
#define MyAppPublisher "Aranikko"
#define MyAppURL "https://github.com/Aranikko/Game_With_Python"
#define MyAppExeName "main.exe"
#define MyAppAssocName MyAppName + " "
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F20AA352-98C5-4032-9448-183B1268F81C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DefaultGroupName={#MyAppName}
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=D:\Game_With_Python\Setup
OutputBaseFilename=Geometry dash 2.2 setup
SetupIconFile=D:\Game_With_Python\icon_gd2.2.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Game_With_Python\dist\main\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_decimal.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_queue.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-console-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-datetime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-debug-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-errorhandling-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-fibers-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-file-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-file-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-file-l2-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-handle-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-interlocked-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-libraryloader-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-localization-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-memory-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-namedpipe-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-processenvironment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-processthreads-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-processthreads-l1-1-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-profile-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-rtlsupport-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-synch-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-synch-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-sysinfo-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-timezone-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-core-util-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-conio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-convert-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-environment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-filesystem-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-locale-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-math-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-process-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-runtime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-stdio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-time-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\api-ms-win-crt-utility-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\base_library.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\bg.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\block.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\floor.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\icon_gd2.2.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\libcrypto-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\libffi-7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\libssl-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\player.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\python310.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\spike.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\ucrtbase.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Game_With_Python\dist\main\VCRUNTIME140.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
