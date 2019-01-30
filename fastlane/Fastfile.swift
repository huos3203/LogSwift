// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation
class Fastfile: LaneFile {
    //fastlane podPushLane version:1.2 project:LogSwift
	func podPushLane(withOptions options:[String: String]?) {
        desc("Description of what the lane does")
		// add actions here: https://docs.fastlane.tools/actions
        let target_v:String = (options?["version"])!
        let project:String  = (options?["project"])!
        let path:String!     = "\(project).podspec"
        cocoapods()
        podLibLint()
        versionBumpPodspec(path: path, versionNumber: target_v, versionAppendix: nil)  //更新 podspec
        
        gitCommit(path: path, message: "Bump version to \(target_v)") //提交版本号修改
        addGitTag(buildNumber: target_v)  //设置 tag
        pushToGitRemote() // 推送到 git 仓库
        //提交到 CocoaPods
//        podPush(useBundleExec: <#T##Bool#>, path: <#T##String?#>, repo: <#T##String?#>, allowWarnings: <#T##String?#>, useLibraries: <#T##String?#>, sources: <#T##[String]?#>, swiftVersion: <#T##String?#>, verbose: <#T##Bool#>)
	}
}
