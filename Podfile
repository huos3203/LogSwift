# Uncomment the next line to define a global platform for your project

workspace '../../hexo.xcworkspace'
target 'LogSwiftForiOS' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  platform :ios, '9.0'
  use_frameworks!
  project 'LogSwift.xcodeproj'

  # Pods for LogSwift
  pod "RNCryptor", "~> 5.0.1"
  target 'LogSwiftforiOSTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'LogSwiftForOSX' do
    platform :osx, '10.11'
    use_frameworks!
    project 'LogSwift.xcodeproj'
    pod 'RNCryptor', '~> 5.0.1'
    target 'LogSwiftForOSXTests' do
        inherit! :search_paths
        # Pods for testing
        pod 'RNCryptor', '~> 5.0.1'
    end
end




