Pod::Spec.new do |tapVisualEffectView|
    
    tapVisualEffectView.platform = :ios
    tapVisualEffectView.ios.deployment_target = '8.0'
    tapVisualEffectView.name = 'TapVisualEffectView'
    tapVisualEffectView.summary = 'UIVisualEffectView wrapper with support of Reduce Transparency Accessibility feature.'
    tapVisualEffectView.requires_arc = true
    tapVisualEffectView.version = '1.0'
    tapVisualEffectView.license = { :type => 'MIT', :file => 'LICENSE' }
    tapVisualEffectView.author = { 'Tap Payments' => 'hello@tap.company' }
    tapVisualEffectView.homepage = 'https://github.com/Tap-Payments/TapVisualEffectView-iOS'
    tapVisualEffectView.source = { :git => 'https://github.com/Tap-Payments/TapVisualEffectView-iOS.git', :tag => tapVisualEffectView.version.to_s }
    tapVisualEffectView.source_files = 'TapVisualEffectView/Source/*.{swift}'
    tapVisualEffectView.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapVisualEffectView.resource_bundle = { 'TapVisualEffectViewResources' => 'TapVisualEffectView/Resources/*.{xib}' }
    
    tapVisualEffectView.dependency 'TapNibView'
    tapVisualEffectView.dependency 'TapAdditionsKit/Foundation/Bundle'
    tapVisualEffectView.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIColor'
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIDevice'
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIView'

end
