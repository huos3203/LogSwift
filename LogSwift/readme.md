创建私库
1.在server提供的git工具中，新建MySpecs库。
    例如：https://server.local/git/MySpecs.git
2. 直接将私库添加到pod仓库,执行后会在~/.cocoapods/多处一个目录MySpecs
   pod repo add MySpecs https://server.local/git/MySpecs.git
3. 把自己的索引文件添加到私库,自动生成标准的pod 库结构，并上传到MySpecs.git库中
   pod repo push MySpecs logSwift.podspec

4. 在项目中使用私库索引
  在项目的Podfile文件中添加：
source 'https://github.com/CocoaPods/Specs.git'  # 官方库
source 'https://server.local/git/MySpecs.git'   # 私有库

pod 'logSwift', '1.0.0'   #使用私库

也可对单独依赖库，指定私库：
[详见](http://guides.cocoapods.org/syntax/podfile.html#pod)
第一种：指定远程私库
pod 'logSwift', :git => 'https://server.local/git/logSwift.git'
第二种：指定本地库索引
pod "LogSwift" , :podspec => '/Users/.../LogSwift/LogSwift.podspec'

检验索引文件的配置是否正确：
pod spec lint

