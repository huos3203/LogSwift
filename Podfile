# Uncomment the next line to define a global platform for your project


target 'LogSwift' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  platform :ios, '9.0'
  use_frameworks!
  project 'LogSwift.xcodeproj'

  # Pods for LogSwift
 pod "RNCryptor", "~> 5.0.1"
  target 'LogSwiftTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'LogSwiftForOSX' do
    platform :osx, '10.11'
    use_frameworks!
    project 'LogSwift.xcodeproj'
    pod 'RNCryptor', '~> 5.0.1'
end




