require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-photo-view"
  s.version      = package["version"]
  s.summary      = package['description']
  s.author       = package['author'] 
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/shinefy/react-native-photo-view.git" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"
end