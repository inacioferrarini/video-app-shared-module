Pod::Spec.new do |s|
  s.name         = "SharedModule"
  s.version      = "0.0.1"
  s.summary      = "Video App Playlist Module."
  s.description  = <<-DESC
                      Playlist Module for VideoApp.
                      DESC
  s.homepage     = "https://github.com/inacioferrarini/video-app-shared-module"
  s.license      = "MIT"
  s.authors      = { "Inácio Ferrarini" => "inacio.ferrarini@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/inacioferrarini/video-app-shared-module.git", :tag => s.version.to_s }
  s.source_files     = "Shared/**/*.swift"
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.dependency 'Glasgow'
end
