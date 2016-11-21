# config/initializers/refile.rb
require "refile/s3"

aws = {
  access_key_id: Rails.application.secrets.aws_access_key_id,
  secret_access_key: Rails.application.secrets.amazon_secret_key,
  region: "eu-central-1",
  bucket: Rails.application.secrets.amazon_s3_bucket,
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
