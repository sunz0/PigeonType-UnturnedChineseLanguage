@echo off
set version=v3.22.9.0
set Unturned=\common\Unturned\
set Translations=patch\Translations\
set Maps=patch\Maps\
set Bundles=patch\Bundles\
set Localization=patch\Localization\Schinese\
echo -----------------------------------------------
echo 		一个小鸽子	            
echo                 Unturned 汉化安装脚本	            
echo 		  %version%                          
echo -----------------------------------------------
echo.
echo 检测汉化文件是否存在...
if not exist %Translations% (
	echo.
	echo Translations 不存在！
	echo 将在3秒后关闭..
	timeout -t 3 >nul
	exit
	) else (
	echo 文件夹存在！继续检测...
)
if not exist %Maps% (
	echo.
	echo Maps 不存在！
	echo 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo 文件夹存在！继续检测...
)
if not exist %Bundles% (
	echo.
	echo Bundles 不存在！
	echo 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo 文件夹存在！继续检测...
)
if not exist %Localization% (
	echo.
	echo Localization 不存在！
	echo 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo 文件夹存在！继续检测...
)
echo.
echo 检测成功！文件夹没有遗失！
echo.
echo 现在来到了安装环节！
echo.
set input=
set /p input=请输入你的SteamApps文件夹路径（Tips：结尾不用加斜杠）：
if not exist "%input%" (
	echo.
	echo 你输入的SteamApps文件夹 不存在！
	echo 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo.
	echo SteamApps文件夹存在！检测Unturned文件夹中...
)
if not exist "%input%%Unturned%" (
	echo.
	echo Unturned文件夹 不存在！
	echo 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo.
	echo Unturned文件夹已找到，20秒后自动安装汉化文件（可以在过程中按叉掉窗口取消安装）
)
timeout -t 20
cls
echo 开始安装！！！
echo.
echo 步骤 1/1
xcopy patch\* "%input%%Unturned%"\ /f /e /y

echo 安装成功！

pause