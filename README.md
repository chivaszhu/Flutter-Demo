1. 安装Flutter环境
步骤：
下载Flutter SDK：

访问 Flutter官方网站。
选择适合Mac的安装包下载。
解压Flutter SDK：
###
###将下载的文件解压到希望的位置（例如：~/development）。
添加Flutter到环境变量：

打开终端。
运行 vim ~/.zshrc。
添加 export PATH="$PATH:[Flutter SDK 路径]/bin"。
运行 source ~/.zshrc。
运行Flutter Doctor：

在终端运行 flutter doctor。
根据提示完成任何需要的配置。
资源链接：
Flutter官网安装指南（中文）
2. 安装Xcode（对于iOS开发）
步骤：
从App Store安装Xcode。
打开Xcode，安装所需组件。
资源链接：
Xcode安装指南（中文）
3. 安装Android Studio（对于Android开发）
步骤：
访问 Android Studio官方网站 下载安装程序。
安装Android Studio，并按照指南配置。
资源链接：
Android Studio安装指南（中文）
4. 在现有的iOS/Android项目中集成Flutter
步骤：
创建Flutter模块：

在终端中，运行 flutter create -t module my_flutter。
集成到iOS：

在iOS项目中，使用CocoaPods添加Flutter模块。
运行 pod init。
在Podfile中，添加 flutter_application_path = '[Flutter模块路径]'。
运行 pod install。
集成到Android：

在Android项目的settings.gradle中，添加对Flutter模块的引用。
在app的build.gradle中，添加依赖。
资源链接：
在现有应用中添加Flutter（中文）
