TapAdditionsKitDependencyVersion    = '>= 1.3.1'		unless defined? TapAdditionsKitDependencyVersion
TapNibViewDependencyVersion         = '>= 1.0.3'	unless defined? TapNibViewDependencyVersion

Pod::Spec.new do |tapVisualEffectView|
    
    tapVisualEffectView.platform                = :ios
    tapVisualEffectView.ios.deployment_target   = '8.0'
    tapVisualEffectView.swift_versions          = ['4.2', '5.0']
    tapVisualEffectView.name                    = 'TapVisualEffectView'
    tapVisualEffectView.summary                 = 'UIVisualEffectView wrapper with support of Reduce Transparency Accessibility feature.'
    tapVisualEffectView.requires_arc            = true
    tapVisualEffectView.version                 = '1.1.1'
    tapVisualEffectView.license                 = { :type => 'MIT', :file => 'LICENSE' }
    tapVisualEffectView.author                  = { 'Tap Payments' => 'hello@tap.company' }
    tapVisualEffectView.homepage                = 'https://github.com/Tap-Payments/TapVisualEffectView-iOS'
    tapVisualEffectView.source                  = { :git => 'https://github.com/Tap-Payments/TapVisualEffectView-iOS.git', :tag => tapVisualEffectView.version.to_s }
    tapVisualEffectView.source_files            = 'TapVisualEffectView/Source/*.{swift}'
    tapVisualEffectView.resource_bundle         = { 'TapVisualEffectViewResources' => 'TapVisualEffectView/Resources/*.{xib}' }
    
    tapVisualEffectView.dependency 'TapAdditionsKit/Foundation/Bundle',     TapAdditionsKitDependencyVersion
    tapVisualEffectView.dependency 'TapAdditionsKit/ObjectiveC/NSObject',   TapAdditionsKitDependencyVersion
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIColor',         TapAdditionsKitDependencyVersion
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIDevice',        TapAdditionsKitDependencyVersion
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIView',          TapAdditionsKitDependencyVersion
    tapVisualEffectView.dependency 'TapNibView',                            TapNibViewDependencyVersion

end
