require 'carrierwave/orm/activerecord'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIHX4BRY7VYVT7S4Q'],
      :aws_secret_access_key => ENV['hyN+xVmOw99AAGx7+Lj6NOgUfUOMM5ijr+CMtycg'],
      :region => ENV['Oregon']
    }
    config.fog_directory     =  ENV['my-sample-pics']
  end
end