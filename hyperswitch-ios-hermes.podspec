version = "0.75.4"

Pod::Spec.new do |s|
    s.name                      = 'hyperswitch-ios-hermes'
    s.version                   =  version
    s.summary                   = 'hermes-engine'
    s.description               = 'hermes-engine for hyperswitch ios sdk'
    s.homepage                  = 'https://hyperswitch.io/'
    s.author                    = 'Harshit S'
    s.license                   = { :type => 'MIT', :file => 'LICENSE' }
    s.platforms                 = { ios: "13.4" }
    s.source                    = {
      http: "https://repo1.maven.org/maven2/com/facebook/react/react-native-artifacts/#{version}/react-native-artifacts-#{version}-hermes-ios-release.tar.gz"
    }

    s.preserve_paths           = ["destroot/bin/*"].concat(["**/*.{h,c,cpp}"])
    s.source_files             =  "destroot/include/hermes/**/*.h"
    s.header_mappings_dir      = "destroot/include"
    s.ios.vendored_frameworks  = "destroot/Library/Frameworks/universal/hermes.xcframework"
    s.xcconfig              = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++20", "CLANG_CXX_LIBRARY" => "compiler-default" }
  end