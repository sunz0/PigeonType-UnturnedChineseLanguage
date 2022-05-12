# PigeonType-UnturnedChineseLanguage
## 这是什么项目？
这是一个在Github上的，所有人都可以参加的，Unturned翻译项目！
## 我该如何贡献？
没事，即使你不会，下面的表格你也应该懂了！

### 这是文件夹的各种含义
| 目录                          | 内容                                          |
| ----------------------------- | --------------------------------------------- |
| /Maps/(关卡名称)/             | 地图的描述文件                                |
| /Localization/Schinese        | UI的语言文件                                  |
| /Localization/Schinese/Editor | UI的语言文件（地图编辑器）                    |
| /Localization/Schinese/Menu   | UI的语言文件（菜单）                          |
| /Localization/Schinese/Server | UI的语言文件（服务器命令 不必翻译）           |
| /Localization/Schinese/Player | UI的语言文件（游玩时的UI）                    |
| /Localization/Schinese/Shared | UI的语言文件（只有一个文件 写着快捷键的解释） |
| /Translations                 | 语言文件（还没翻译）                          |
### 这是文件夹中文件的含义（Localization）
| 目录                                      | 文件                          | 内容                                           |
| ----------------------------------------- | ----------------------------- | ---------------------------------------------- |
| /Localization/Schinese/Menu               | MenuDashboard.dat             | 主界面菜单/各种被踢出原因                      |
| /Localization/Schinese/Menu               | MenuLoading.dat               | 游戏刚打开加载 服务器/单人模式进入加载         |
| /Localization/Schinese/Menu               | MenuPause.dat                 | 游戏暂停的界面                                 |
| /Localization/Schinese/Menu               | MenuTips.dat                  | 游戏刚打开加载/服务器/单人模式加载时显示的提示 |
| /Localization/Schinese/Menu               | MenuTitle.dat                 | 游戏制作者栏+你与全世界的差别                  |
| /Localization/Schinese/Menu/Configuration | MenuConfiguration.dat         | 设置主体                                       |
| /Localization/Schinese/Menu/Configuration | MenuConfigurationControls.dat | 设置-控制                                      |
| /Localization/Schinese/Menu/Configuration | MenuConfigurationDisplay.dat  | 设置-显示                                      |
| /Localization/Schinese/Menu/Configuration | MenuConfigurationGraphics.dat | 设置-画质                                      |
| /Localization/Schinese/Menu/Configuration | MenuConfigurationOptions.dat  | 设置-游戏设置                                  |
| /Localization/Schinese/Menu/Play          | MenuPlay.dat                  | 游玩主界面                                     |
| /Localization/Schinese/Menu/Play          | MenuPlayConfig.dat            | 单人游戏高级设置                               |
| /Localization/Schinese/Menu/Play          | MenuPlayConnect.dat           | 连接页面（直接输入IP地址连接服务器的）         |
| /Localization/Schinese/Menu/Play          | MenuPlayLobbies.dat           | 拉Steam好友的主页                              |
| /Localization/Schinese/Menu/Play          | MenuPlayMatchmaking.dat       | 不知，似乎是根据游戏上地图找服务器             |
| /Localization/Schinese/Menu/Play          | MenuPlayServerInfo.dat        | 服务器详细页面                                 |
| /Localization/Schinese/Menu/Play          | MenuPlayServers.dat           | 寻找服务器页面                                 |
| /Localization/Schinese/Menu/Play          | MenuPlayServerInfo.dat        | 服务器详细页面                                 |
| /Localization/Schinese/Menu/Play          | MenuPlaySingleplayer.dat      | 单人游戏页面                                   |
| /Localization/Schinese/Menu/Play          | MenuServerPassword.dat        | 当服务器有密码保护让你输入密码的界面           |
| 更多列表小鸽子正在咕咕咕更新中！         | 更多列表小鸽子正在咕咕咕更新中！        | 更多列表小鸽子正在咕咕咕更新中！           |
## 怎么翻译？
### Example
```
Test1 English
Test2 English
Test3 English {1}
Test4 English {1} {2} {3}
```
"Test1~4"为开发者设置的名字，绝对不能更改！不然会导致UI不显示问题！
"English"才是翻译文本，你只能修改这个！
{1} 为替换符，绝对要格式对，不然会导致UI不显示问题！{}是英文！{1}中的数字也不能更改
{1} {2} {3} 为多个替换符也不能更改，顶多因为翻译换一下顺序！
### 具体的翻译过程
Localization：点进指定文件 --> Edit --> Fork项目 --> 机翻一遍 --> 手动纠错 --> 提交PR --> 等待审核
Maps：点进English.dat --> Edit --> Fork项目 --> 机翻一遍 --> 手动纠错 --> 把English.dat改成Schinese.dat（注意大小写） --> 提交PR --> 等待审核
### 现处于Beta阶段
如你所见，一些物品的文件还没上传到github。之后一个小鸽子会添加的！