# Refile.cache = Refile::S3.new(prefix: 'tenkihuku-production', **aws)
# Refile.store = Refile::S3.new(prefix: 'tenkihuku-production', **aws)

Refile.secret_key = 'faf3e4c0d182dc9fda11950c6bc545e28c7a8ecce3a402fa961647a2fb15abdec5b8616f88abd46d1d6936e94776046acb052acbddf20291da4ecdb7a277d1ee'
require "refile/s3"
aws = {
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1',
    bucket: 'tenkihuku.development',
}
Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
# Refile.backends['store'] = Refile::Backend::FileSystem.new('/etc/projectname-uploads/')

# CarrierWave.configure do |config|
# config.fog_provider = 'fog/aws'
# config.fog_credentials = {
#   provider: 'AWS',
#   aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
#   aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#   region: 'ap-northeast-1'
# }
# config.fog_directory = ENV['S3_BUCKET_NAME']
# config.asset_host = "https://s3-ap-northeast-1.amazonaws.com/#{ ENV['S3_BUCKET_NAME'] }"
