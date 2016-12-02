创建私库
1.在server提供的git工具中，新建MySpecs库。
    例如：https://server.local/git/MyRepo.git
2. 直接将私库添加到pod仓库,执行后会在~/.cocoapods/多处一个目录MySpecs
   pod repo add MyRepo https://server.local/git/MyRepo.git
3. 把自己的索引文件添加到私库,自动生成标准的pod 库结构，并上传到MySpecs.git库中
   pod repo push MyRepo logSwift.podspec

4. 在项目中使用私库索引
  在项目的Podfile文件中添加：
source 'https://github.com/CocoaPods/Specs.git'  # 官方库
source 'https://server.local/git/MyRepo.git'   # 私有库

pod 'logSwift', '1.0.0'   #使用私库

也可对单独依赖库，指定私库：
[详见](http://guides.cocoapods.org/syntax/podfile.html#pod)
第一种：可以指定远程项目，前提必须有pod索引文件配置
pod 'logSwift', :git => 'https://server.local/git/logSwift.git'
第二种：指定本地库索引文件
pod "LogSwift" , :podspec => '/Users/.../LogSwift/LogSwift.podspec'

检验索引文件的配置是否正确：
pod spec lint

搜索库
pod search LogSwift #会搜索私库MyRepo


//删除私库
pod repo remove MyRepo
//添加私库
pod repo add MyRepo https://server.local/git/MyRepo.git

如果我们要删除私有Spec Repo下的某一个podspec怎么操作呢，此时无需借助Cocoapods，只需要cd到~/.cocoapods/repos/WTSpecs目录下，删掉库目录
~/.cocoapods/repos/WTSpecs$ rm -Rf PodTestLibrary
然后在将Git的变动push到远端仓库即可
:~/.cocoapods/repos/WTSpecs$ git add --all .
:~/.cocoapods/repos/WTSpecs$ git ci -m "remove unuseful pods"
:~/.cocoapods/repos/WTSpecs$ git push origin master
