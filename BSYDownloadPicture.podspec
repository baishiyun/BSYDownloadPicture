Pod::Spec.new do |s|
  s.name         = "BSYDownloadPicture" 
  s.version      = "1.1.0"     
  s.license      = "MIT"       
  s.summary      = "图片下载工具，优化缓存处理，后面会有具体的完善，还希望大家多多支持,多多Star，谢谢"

  s.homepage     = "https://github.com/baishiyun/BSYDownloadPicture" 
  s.source       = { :git => "https://github.com/baishiyun/BSYDownloadPicture.git", :tag => "#{s.version}" }
  s.source_files = "BSYDownloadPicture/*.{h,m}"
  s.requires_arc = true 
  s.platform     = :ios, "7.0" 
  s.frameworks   = "UIKit", "Foundation"
  s.author             = { "白仕云" => "baishiyun@163.com" } 
  s.social_media_url   = "https://github.com/baishiyun" 

end