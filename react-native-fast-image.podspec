require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = "react-native-fast-image-v2"
  s.version = package['version']
  s.summary = "🚩 FastImage, performant React Native image component."

  s.authors = { "Dylan Vann" => "dylan@dylanvann.com" }
  s.homepage = "https://github.com/850176300/react-native-fast-image-v2#readme"
  s.license = "MIT"

  s.platform = :ios, "8.0"
  s.framework    = 'UIKit'
  s.requires_arc = true

  s.source = { :git => "https://github.com/850176300/react-native-fast-image-v2.git", :tag => "v"+package['version'] }
  s.source_files = "ios/**/*.{h,m}"
  s.exclude_files = "ios/Vendor/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'SDWebImage/Core'
  s.dependency 'SDWebImage/GIF'
  s.dependency 'SDWebImage/WebP'
  s.dependency 'FLAnimatedImage'
end