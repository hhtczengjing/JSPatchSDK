Pod::Spec.new do |s|
  s.name         = "JSPatchSDK"
  s.version      = "1.1"
  s.summary      = "JSPatch SDK Framework."
  s.description  = <<-DESC
                   JSPatch bridge Objective-C and JavaScript. You can call any Objective-C class
                   and method in JavaScript by just including a small engine.
                   DESC
  s.homepage     = "http://www.jspatch.com/Index/sdk"
  s.license      = { :type => "MIT", :text => "" }
  s.author       = { "bang" => "bang590@gmail.com" }
  s.platform     = :ios
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/hhtczengjing/JSPatchSDK.git", :tag => s.version.to_s }
  s.vendored_frameworks = "JSPatch.framework"
  s.framework  = "JavaScriptCore"
end
