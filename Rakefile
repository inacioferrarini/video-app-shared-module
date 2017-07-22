
desc "Executes pod install and fix files messed up by Cocoapods."
task :install do
sh "bundle exec pod install"
end

desc "Executes pod update and fix files messed up by Cocoapods."
task :update do
sh "bundle exec pod update"
end

desc "Generates Slather Code Coverage Report."
task :slather do
sh "killall -9 'Simulator' || true"
sh "killall -9 'iOS Simulator' || true"
sh "killall -9 com.apple.CoreSimulator.CoreSimulatorService || true"
sh "rm -rf ~/Library/Developer/Xcode/DerivedData/* || true"
sh "rm -rf ~/Library/Developer/CoreSimulator/* || true"
sh "rm -rf slather-report || true"
sh "xcodebuild clean build -workspace Shared.xcworkspace -scheme Shared -destination 'platform=iOS Simulator,name=iPhone 5s' VALID_ARCHS=x86_64 test | xcpretty"
sh "bundle exec slather > /dev/null"
sh "open slather-report/index.html > /dev/null"
end

desc "Creates repository reference"
task :repoadd do
    sh "pod repo add inacio-specs https://github.com/inacioferrarini/Specs.git"
end

desc "Publish to mine repository"
task :publish, [:version] do |t, args|
    if args[:version].nil?
        puts "Usage: rake publish['0.2.0'] or rake publish\\[\\'0.2.0\\'\\] if using zsh"
    else
        puts "!!SOON: Update podspec version from here!!"
        sh "bundle exec pod lib lint"
        sh "git add -A && git commit -m \"Release #{args[:version].to_s}\""
        sh "git tag '#{args[:version].to_s}'"
        sh "git push --tags"   
        sh "bundle exec pod repo push inacio-specs SharedModule.podspec"
    end
end

desc "prints publish help"
task :publish do
    
end

desc "Generates Code Style Report."
task :oclint do
sh "echo oclint ... "
end

