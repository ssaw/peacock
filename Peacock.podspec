Pod::Spec.new do |s|
  s.name               = "Peacock"
  s.version            = "0.0.1"
  s.summary            = "Peacock is a group of categories that extend the use of UIAppearance protocol on UIView subclasses."
  s.description        = ""
  s.homepage           = "http://developers.lyst.com/"
  s.license            = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "MakingLyst" => "makingLyst@lyst.com" }
  s.social_media_url   = "http://twitter.com/MakingLyst"
  s.platform           = :ios, "7.0"

 # s.source            = { :git => "https://github.com/ssaw/peacock.git", :tag => s.version }
  s.source	           = { :path => "~/Documents/Dev/Lyst/Peacock/" }

  s.source_files  = "Peacock/**/*"
  s.exclude_files = "PeacockApp/*","Peacock.xcodeproj/*","Peacock.xcworkspace/*","PeacockAppTests/*","PeacockTests/*","Pods/*"
  s.public_header_files = "Peacock/Peacock.h"
  s.requires_arc = true
end
