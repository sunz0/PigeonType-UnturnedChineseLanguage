
:: 
:: PigeonTypeZhLangInstaller @ Version 2022/6/12
:: 由 一个小鸽子制作，你可以转载但绝对不能盗取。
:: 
:: 使用 UTF-8 编码 （在release会使用ANSI）
:: 
:: 只开源最主要的安装脚本部分。
::
:: 使用的工具：
:: (1) 7z 命令行（用于创建备份包，85~104行）
::

@echo off
title Unturned 汉化安装脚本 
set Translations=patch\Translations\
set Maps=patch\Maps\
set Bundles=patch\Bundles\
set Localization=patch\Localization\Schinese\
setlocal enabledelayedexpansion
echo. -----------------------------------------------------------------------------------------------------------------------
echo. 	    一个小鸽子	            
echo.         Unturned 汉化安装脚本 :: https://github.com/YigeXiaogeziAwa/PigeonType-UnturnedChineseLanguage                  
echo. -----------------------------------------------------------------------------------------------------------------------
echo.
echo [ %time% - 自检工作 ] 检测汉化文件是否存在...
if not exist %Translations% (
	echo.
	echo [ 提示 ] Translations 不存在！
	echo [ 提示 ] 将在3秒后关闭..
	timeout -t 3 >nul
	exit
	) else (
	echo [ 提示 ] 文件夹存在！继续检测...
)
if not exist %Maps% (
	echo.
	echo [ 提示 ] Maps 不存在！
	echo [ 提示 ] 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo [ 提示 ] 文件夹存在！继续检测...
)
if not exist %Bundles% (
	echo.
	echo [ 提示 ] Bundles 不存在！
	echo [ 提示 ] 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo [ 提示 ] 文件夹存在！继续检测...
)
if not exist %Localization% (
	echo.
	echo [ 提示 ] Localization 不存在！
	echo [ 提示 ] 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo [ 提示 ] 文件夹存在！继续检测...
)
echo.
echo [ %time% - 自检工作 ] 检测成功！文件夹没有遗失！
echo.
echo [ 提示 ] 安装环节！
echo. 
FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 304930" /v InstallLocation`) DO (set InstallLocation=%%A %%B)
echo [ %time% - 提示 ] 已找到Unturned路径！
echo [ %time% - 提示 ] 检测Unturned路径...
if not exist "%InstallLocation%" (
	echo.
	echo [ 提示 ] InstallLocation 不存在！
	echo [ 提示 ] 将在3秒后关闭安装脚本...
	timeout -t 3 >nul
	exit
	) else (
	echo [ 提示 ] 文件夹存在！
)
echo [ %time% - 安装 ] 20秒后自动安装汉化文件到 %InstallLocation% 上（可以叉掉窗口取消安装）(128线程安装)
timeout -t 20
cls
echo 步骤 1/2 [创建备份包] 之后的进度会在程序名字栏上。
TIMEOUT -T 10
title 创建备份包 - bak-Bundles.zip - 打包 %InstallLocation%\Bundles ...
7z a bak-Bundles.zip "%InstallLocation%\Bundles" -mmt 
title 创建备份包 - bak-Bundles.zip - 删除 core.masterbundle
7z d bak-Bundles.zip core.masterbundle -r
title 创建备份包 - bak-Bundles.zip - 删除 core.masterbundle.*
7z d bak-Bundles.zip core.masterbundle.* -r
title 创建备份包 - bak-Bundles.zip - 删除 MasterBundle.dat
7z d bak-Bundles.zip MasterBundle.dat -r
title 创建备份包 - bak-Bundles.zip - 删除 Sources 等不需要的文件夹
7z d bak-Bundles.zip Sources\ -r
7z d bak-Bundles.zip Assets\ -r
7z d bak-Bundles.zip Levels\ -r
7z d bak-Bundles.zip Spawns\ -r
7z d bak-Bundles.zip Assets\ -r
7z d bak-Bundles.zip Objects\ -r
7z d bak-Bundles.zip Effects\ -r
title 创建备份包 - bak-Translations.zip - 打包 %InstallLocation%\Translations ...
7z a bak-Translations.zip "%InstallLocation%\Translations" -mmt 
title 创建备份包 - bak-Localization.zip - 打包 %InstallLocation%\Localization ...
7z a bak-Localization.zip "%InstallLocation%\Localization" -mmt 
echo 步骤 2/2 [安装汉化到 "%InstallLocation%"]
title 开始安装汉化...
robocopy patch\ "%InstallLocation%"\ /v /e /is /MT:128 > rc.log
echo.
echo 安装成功！
pause