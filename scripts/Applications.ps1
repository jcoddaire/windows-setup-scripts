#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

#--- Dev tools ---
choco install vscode
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'"
choco install git-credential-manager-for-windows
choco install -y 7zip.install
choco install -y sysinternals

choco install -y python2 # Node.js requires Python 2 to build native modules
choco install -y nodejs-lts # Node.js LTS, Recommended for most users
# choco install -y nodejs # Node.js Current, Latest features

choco install -y visualstudio2017community --package-parameters="'--add Microsoft.VisualStudio.Component.Git'"

choco install -y visualstudio2017buildtools
choco install -y visualstudio2017-workload-azure
choco install -y visualstudio2017-workload-manageddesktop
choco install -y visualstudio2017-workload-nativedesktop
choco install -y visualstudio2017-workload-vctools
choco install -y visualstudio2017-workload-universal

choco install notepadplusplus
choco install everything
choco install agentransack
choco install urlrewrite
choco install dotpeek
choco install ilspy

choco install keepassxc
choco install fiddler
choco install postman
choco install mongodb
choco install sql-server-management-studio

choco install picpick.portable

choco install -y dotnetcore-sdk
choco install netfx-4.7.2-devpack

$downDir = New-Item -Path $([Environment]::GetFolderPath("Desktop")) -Name "to_install" -ItemType Directory -Force
$webClient = New-Object System.Net.WebClient

$webClient.DownloadFile("https://central.github.com/deployments/desktop/desktop/latest/win32",           "$downDir\GitHubDesktopSetup.exe")
