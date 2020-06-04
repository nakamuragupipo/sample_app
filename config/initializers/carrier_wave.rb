if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
        :aws_access_key_id     => ENV['AKIAZJL3RPTEXORMIDH3'],
        :aws_secret_access_key => ENV['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']
      }
      config.fog_directory     =  ENV['ponyolion']
    end
  end
