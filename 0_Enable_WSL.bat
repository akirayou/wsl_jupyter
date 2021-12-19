set BAT=%~0

@if "%1"=="R" (
	echo "Enabling WSL."
	dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
) else (
	REM 管理者モードでの実行
	powershell start-process """%BAT%""" R -verb runas
)

