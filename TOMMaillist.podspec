Pod::Spec.new do |s|

s.name         = "TOMMaillist"
s.version      = "1.01"
s.summary      = "Address book small frameWork"
s.homepage     = "https://github.com/yeshichang/TOMMaillist"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "yeshichang" => "15238280098@163.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/yeshichang/TOMMaillist.git", :tag => s.version }
s.source_files  = 'Maillist/**/*.{h,m}'
s.requires_arc = true
s.framework  = "UIKit"

end
