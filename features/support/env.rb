require 'rspec/expectations'
require 'appium_lib'
require 'pry'
require 'dotenv'

Dotenv.load

caps = nil

if ENV['PLATFORM'] == 'ios'
    caps = { 
        caps: {
            platformName: ENV["IOS_PLATFORM_NAME"], 
            platformVersion: ENV["IOS_PLATFORM_VERSION"], 
            deviceName: ENV["IOS_DEVICE_NAME"], 
            app: ENV["IOS_APP_PATH"]
        }
    }
elsif ENV['PLATFORM'] == 'android'
    caps = { 
        caps: {
            platformName: ENV["ANDROID_PLATFORM_NAME"], 
            platformVersion: ENV["ANDROID_PLATFORM_VERSION"], 
            deviceName: ENV["ANDROID_DEVICE_NAME"], 
            app: ENV["ANDROID_APP_PATH"]
        }
    }  
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
