Pod::Spec.new do |s|

  s.name         = "HPCollectionLayout"
  s.version      = "1.2.0"
  s.summary      = "HPCollectionLayout is a custom cocoa collectionlayout"
  s.homepage     = "http://huypham.me"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Huy Pham" => "duchuykun@gmail.com" }
  s.social_media_url   = "https://www.instagram.com/huyphams"
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/huyphams/HPCollectionLayout.git", :tag => "#{s.version}" }
  s.source_files  = "Class/*.{h,m}"
  s.requires_arc = true

end
