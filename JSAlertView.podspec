Pod::Spec.new do |s|
  s.name         =  'JSAlertView'
  s.version      =  '0.0.1'
  s.license      =  'MIT'
  s.summary      =  'JSAlertView is a wrapper class for UIAlertView and UIAlertViewController.' 
  s.description      =  'JSAlertView is a subclass of UIAlertView/UIAlertViewController that would provide common method for UIAlertView and UIAlertViewController and chooses whatever is compatible as per running iOS version.'
  s.author       =  { 'Jitendra Singh' => 'https://github.com/sspbond007' }
  s.source       =  { :git => 'https://github.com/sspbond007/JSAlertView.git', :commit => '18f4da891f1afe80b505aff64354ec968f5b9444' }
  s.homepage     =  'https://github.com/sspbond007/JSAlertView'
  s.platform     =  :ios
  s.source_files =  'Source'
  s.requires_arc =  true
end
