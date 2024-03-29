Pod::Spec.new do |spec|

  spec.name         = "Nimbbl-SDK"
  spec.version      = "1.0.10"
  spec.summary      = "Nimbbl checkout iOS SDK"
  spec.description  = "Accept payments easily on your app with the Nimbbl iOS SDK.\n\nGet 1-click checkout, higher conversions with multiple buy now pay laters and payment gateways via a single Nimbbl SDK implementation.\n\nNimbbl supports all payment options - Buy Now Pay Later, UPI, Google Pay, Phonepe, Debit/Credit Cards (Visa/ Mastercard/ RuPay/ American express), 50+Netbanking, Wallets and more."
  spec.homepage     = "https://github.com/nimbbl-tech/nimbbl-ios-sample-app"
  spec.license      = "GPL20"
  spec.author       = { "Nimbbl" => "support@nimbbl.biz" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"
  spec.source       = { :git => "https://github.com/nimbbl-tech/nimbbl-ios-sdk.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'NimbblCheckoutSDK.framework'
  spec.public_header_files = "NimbblCheckoutSDK.framework/Headers/*.h"
  spec.source_files = "NimbblCheckoutSDK.framework/Headers/*.h"
  spec.dependency 'Analytics'
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.documentation_url = 'https://docs.nimbbl.tech/#/ios-sdk'
  
end
