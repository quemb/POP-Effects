Pod::Spec.new do |s|
  s.name         = 'POP+Effects'
  s.version      = '0.0.2'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/quemb/POP-Effects'
  s.authors      =  {'Toni Moeckel' => 'tonimoeckel@gmail.com'}
  s.summary      = 'POP Extensions'

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  {:git => 'https://github.com/quemb/POP-Effects.git', :branch => '0.0.2'}
  s.source_files = 'POP+Effects/*.{h,m}'
  s.requires_arc = true
  
# Pod Dependencies
  s.dependency       'pop'

end
