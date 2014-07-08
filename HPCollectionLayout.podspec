Pod::Spec.new do |s|

  s.name         = "HPCollectionLayout"
  s.version      = "0.0.1"
  s.summary      = "HPCollectionLayout is a custom cocoa collectionlayout"
  s.homepage     = "http://facebook.com/huyphams"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Huy Pham" => "duchuykun@gmail.com" }
  s.social_media_url   = "https://facebook.com/huyphams"
  s.platform     = :ios, "6.0"
  s.source       = { :git => "http://github.com/huyphams/HPCollectionLayout.git", :tag => "#{s.version}" }
  s.source_files  = "Class/*.{h,m}"
  s.requires_arc = true

end

