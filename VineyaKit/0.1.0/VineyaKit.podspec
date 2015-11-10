Pod::Spec.new do |s|
  s.name         = 'VineyaKit'
  s.version      = '0.1.0'
  s.summary      = 'Core Vineya utility collection.'

  s.homepage     = 'https://github.com/C-S-D/VineyaKit'
  s.license      = 'COMMERCIAL'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@csd.org' }
  s.source       = { :git => 'https://github.com/C-S-D/VineyaKit.git',
                     :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.public_header_files = 'VineyaKit/VineyaKit.h', 'VineyaKit/CSD/**/*.h'
  s.source_files = 'VineyaKit/**/*.{h,m}'

  s.frameworks   = 'UIKit', 'Foundation'
end
