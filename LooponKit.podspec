Pod::Spec.new do |s|
  s.name         = "LooponKit"
  s.version      = "0.1"
  s.summary      = "iOS Library fo Loopon's Public API"
  s.description  = <<-DESC
                   This library contains models, connectors, and helper functions that allow an iOS App to easily communicate with Loopon's Public API.
DESC
  s.homepage     = "https://github.com/LooponAB/LooponKit"
  s.license      = { :type => "BSD", :file => "LICENSE" }
  s.author             = { "Loopon AB" => "support@loopon.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/LooponAB/LooponKit.git", :tag => "#{s.version}" }
  s.source_files  = "LooponKit", "LooponKit/*"
  s.preserve_paths = "LooponKit/CommonCrypto/module.map"
  s.xcconfig = { "SWIFT_INCLUDE_PATHS" => "LooponKit/LooponKit/CommonCrypto" }
  s.dependency "SocketRocket", "~> 0.5"
end
