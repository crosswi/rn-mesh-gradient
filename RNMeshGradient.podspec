require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNMeshGradient"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = package["description"]
  s.homepage     = package["homepage"]
  s.license      = { :type => package["license"] }
  s.platforms    = { :ios => "18.0" }
  s.author       = { "Cameron Cross" => "camcross11@@gmail.com" }
  s.source       = { :git => package["repository"]["url"], :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m,mm,swift}"
end