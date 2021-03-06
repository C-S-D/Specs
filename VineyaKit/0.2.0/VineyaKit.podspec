Pod::Spec.new do |s|
  s.name         = 'VineyaKit'
  s.version      = '0.2.0'
  s.summary      = 'Core Vineya utility collection.'

  s.homepage     = 'https://github.com/C-S-D/VineyaKit'
  s.license      = 'COMMERCIAL'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@csd.org' }
  s.source       = { :git => 'https://github.com/C-S-D/VineyaKit.git',
                     :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.default_subspec = 'Default'

  s.subspec 'Default' do |ss|
    ss.dependency 'VineyaKit/Core'
    ss.dependency 'VineyaKit/CSDJWT'
    ss.dependency 'VineyaKit/CSDVersionNotifier'
  end

  s.subspec 'Core' do |ss|
    ss.public_header_files = 'VineyaKit/CSD/*.h'
    ss.source_files = 'VineyaKit/CSD/*.{h,m}', 'VineyaKit/SLC/*.{h,m}'
    ss.frameworks   = 'Foundation', 'UIKit'
  end

  s.subspec 'CSDJWT' do |ss|
    ss.dependency 'VineyaKit/Core'

    ss.source_files = 'VineyaKit/CSD/CSDJWT/*.{h,m}'
  end

  s.subspec 'CSDVersionNotifier' do |ss|
    ss.dependency 'VineyaKit/Core'

    ss.source_files = 'VineyaKit/CSD/CSDVersionNotifier/*.{h,m}'
  end
end
