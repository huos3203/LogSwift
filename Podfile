# Uncomment the next line to define a global platform for your project
target 'LogSwiftForiOS' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  platform :ios, '13.0'
  use_frameworks!
  project 'LogSwift.xcodeproj'

  # Pods for LogSwift
  pod 'LogSwift', :path => './'
  target 'LogSwiftforiOSTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'LogSwiftForOSX' do
    platform :osx, '10.11'
    use_frameworks!
    project 'LogSwift.xcodeproj'
    pod 'LogSwift', :path => './'
    target 'LogSwiftForOSXTests' do
        inherit! :search_paths
        # Pods for testing
    end
end

#
#post_install do |installer|
#    installer.pods_project.targets.each do |target|
#        target.build_configurations.each do |config|
#            config.build_settings['SWIFT_VERSION'] = '5.0'
#        end
#    end
#end

