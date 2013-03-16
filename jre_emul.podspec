Pod::Spec.new do |s|
  s.name         = "jre_emul"
  s.version      = "0.0.1"
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.source_files = 'jre_emul/Classes/java/**/*.h', 'jre_emul/Classes/**/*.m', 'jre_emul/build_result/Classes/**/*.m', 'junit/src/main/native/**/*.m', 'junit/build_result/junit/**/*.m'
  s.preserve_paths = 'dist/include/**'
# s.public_header_files = FileList['jre_emul/Classes/java/lang/reflect/*.h'].exclude(/build_result/)
# s.header_mappings_dir = 'dist/include'
  
  s.frameworks = 'SenTestingKit'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/jre_emul/dist/include"', 'USE_HEADERMAP' => 'NO', 'FRAMEWORK_SEARCH_PATHS' => '$(SYSTEM_APPS_DIR)/Xcode.app/Contents/Developer/Library/Frameworks', 'GCC_WARN_MISSING_PARENTHESES' => 'NO' }

end
