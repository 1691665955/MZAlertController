Pod::Spec.new do |spec|
  spec.name         = "MZAlertController"
  spec.version      = "0.0.1"
  spec.summary      = "MZAlertController是Swift版本的自定义弹框基类，包含Alert、ActionSheet两个模式"
  spec.homepage     = "https://github.com/1691665955/MZAlertController"
  spec.authors         = { 'MZ' => '1691665955@qq.com' }
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.source = { :git => "https://github.com/1691665955/MZAlertController.git", :tag => spec.version}
  spec.platform     = :ios, "9.0"
  spec.swift_version = '5.0'
  spec.source_files  = "MZAlertController/MZAlertController/*"
end
