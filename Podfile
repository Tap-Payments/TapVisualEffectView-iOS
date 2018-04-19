platform :ios, '8.0'
use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'

def shared_pods
    
    pod 'TapNibView'
    pod 'TapAdditionsKit/Foundation/Bundle'
    pod 'TapAdditionsKit/ObjectiveC/NSObject'
    pod 'TapAdditionsKit/UIKit/UIColor'
    pod 'TapAdditionsKit/UIKit/UIDevice'
    pod 'TapAdditionsKit/UIKit/UIView'
    
end

target 'TapVisualEffectView' do
    
    shared_pods

end

target 'TapVisualEffectViewExample' do

    shared_pods

end

post_install do |installer|
    
    installer.pods_project.targets.each do |target|
        
        target.build_configurations.each do |config|
            
            config.build_settings['SWIFT_VERSION'] = '4.1'
            
        end
    end
end
