Pod::Spec.new do |s|
  s.name         = 'CSDFontAwesome'
  s.version      = '0.2.0'
  s.summary      = 'Adds Font Awesome iconic font handling to iOS.'

  s.homepage     = 'https://github.com/C-S-D/CSDFontAwesome'
  s.license      = 'MIT'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@csd.org' }

  s.source       = { :git => 'https://github.com/C-S-D/CSDFontAwesome.git',
                     :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.public_header_files = 'CSDFontAwesome/UI*.h'
  s.source_files = 'CSDFontAwesome/*.{h,m}'
  s.resource = 'CSDFontAwesome/CSDFontAwesome.bundle'
  s.frameworks   = 'UIKit', 'CoreText'
end
