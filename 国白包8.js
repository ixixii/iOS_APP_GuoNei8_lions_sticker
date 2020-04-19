花呗_688元_开通的国内开发账号
账号：xiaoshuai20000406@163.com
密码：
-----------
创建dev证书和dis证书
创建bundleID: com.cn18x.lionsticker
创建调试设备：
Device Name: iPhone8_64G 
UDID: 316fca9f9656aba5b35f1a0e00a75025ffadddad
创建dev描述文件: com_cn18x_lionsticker_dev_20200419
创建dis描述文件: com_cn18x_lionsticker_dis_20200419
-----------
创建工程： Single View App
product name: lionsticker
Organization Name: cn18x
Organization Identifier: com.cn18x
-----------
支持iOS 10.0
去掉iPad、Landscape Left/Right
AppDelegate.h中声明"@property (strong, nonatomic) UIWindow * window;"
-----------
info.plist新增：
<key>NSCameraUsageDescription</key>
<string>请允许APP访问您的相机</string>
<key>NSPhotoLibraryAddUsageDescription</key>
<string>请允许APP保存图片到相册</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>请允许APP访问您的相册</string>
-----------
主控制器通过自定义UICollectionViewCell展示24张图片：
lion1@3x.png  		尺寸：300*300
lion24@3x.png  		尺寸：300*300
-----------
新建扩展target:
iOS APP现有工程中，添加贴纸功能

1. 打开现有工程
2. File -> New -> Target -> Sticker Pack Extension
product name: sticker
Organization name: cn18x
Organization Identifier: com.cn18x.lionsticker.sticker

3. Sticker.xcassets
   Info.plist

4. 切换target -> Sticker Target
   Display Name: 主APP在Appstore上显示的名称：lion sticker
   Bundle ID: com.cn18x.lionsticker.sticker
   version: 1.0
   build: 1

   去掉ipad

5. Stickers.xcassets
   5.1 APP ICON，必须与主产品的ICON一致,长方形 + 正方形 
   注意： 底色必须是白色的！！！ （如果忘了也没有关系，可以使用PS -> File -> 批处理 -> 
   	     为目录iMessage App Icon.stickersiconset 下所有图片添加白色背景底色）

   	   正方形3个： 58*58、87*87、1024*1024
   	   长方形9个： 54*40
   	   			 64*48
   	   			 81*60
   	   			 96*72
   	   			 120*90
   	   			 134*100
   	   			 148*110
   	   			 180*135
   	   			 1024*768

   5.2 sticker size :small(4个一排，推荐，300X300@3x.png), M（3个一排，408X408@3x）, Large(2个一排，618X618@3x)   
注意：
1. 贴纸的显示名称，必须与主app一致
2. 贴纸的bundle id必须为： 主Bundle ID + Sticker  
————————————————
为贴纸target创建bundleid以及dev和dis证书
bundleid: com.cn18x.lionsticker.sticker
dev: com_cn18x_lionsticker_sticker_dev_20200419
dis: com_cn18x_lionsticker_sticker_dis_20200419
————————————————
把LI图片目录下的@3x.png
全部拖进Sticker Pack


————————————————
隐私政策：
http://vwhm.net/2020/04/19/lions-sticker-privacy.html

类别： 娱乐

app描述：
The cute lion iMessage sticker is so cute and gentle. You can share it with your friends in the chat and let them feel its cuteness.

iPhone 11 pro max 尺寸： 1242x2688.png
iPhone 8  Plus 	  尺寸:  1242x2208.png

————————————————
转让APP
308829827@qq.com
N7NJC6YLRV

————————————————
git init
git add --all
git commit -m 'iOS 国内区白包8 lions sticker'
git remote add origin https://github.com/ixixii/iOS_APP_GuoNei8_lions_sticker.git
git push -u origin master
git push origin master
