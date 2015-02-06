Pod::Spec.new do |s|
s.name             = "UIButton-ANDYHighlighted"
s.version          = "0.2"
s.summary          = "Adds highlighted background color to UIButton"
s.homepage         = "https://github.com/NSElvis/UIButton-ANDYHighlighted"
s.license          = 'MIT'
s.author           = { "Elvis Nuñez" => "hello@nselvis.com" }
s.source           = { git: "https://github.com/NSElvis/UIButton-ANDYHighlighted.git", tag: s.version.to_s }
s.social_media_url = 'https://twitter.com/NSElvis'

s.platform         = :ios, '7.0'
s.requires_arc     = true

s.source_files     = 'Source/**/*'

s.frameworks = 'UIKit'

end
