# アクセストークンなどを設定
$client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "Consumer Key (API Key)"
    config.consumer_secret     = "Consumer Secret (API Secret)"
    config.access_token        = "Access Token"
    config.access_token_secret = "Access Token Secret"
end