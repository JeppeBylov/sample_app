if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJZ5K4OK76RGONYPQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['jeppebylovsampleapp']
  end
end