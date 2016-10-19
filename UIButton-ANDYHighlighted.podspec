Pod::Spec.new do |s|
s.name             = "UIButton-ANDYHighlighted"
s.version          = "2.0.0"
s.summary          = "Adds highlighted background color to UIButton"
s.homepage         = "https://github.com/3lvis/UIButton-ANDYHighlighted"
s.license          = 'MIT'
s.author           = { "Elvis Nuñez" => "elvisnunez@me.com" }
s.source           = { git: "https://github.com/3lvis/UIButton-ANDYHighlighted.git", tag: s.version.to_s }
s.social_media_url = 'https://twitter.com/3lvis'
s.platform         = :ios, '7.0'
s.requires_arc     = true
s.source_files     = 'Source/**/*'
s.frameworks = 'UIKit'
end
