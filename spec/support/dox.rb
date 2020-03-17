# frozen_string_literal: true

Dox.configure do |config|
  config.header_file_path = Rails.root.join('spec/docs/v1/descriptions/header.md')
  config.desc_folder_path = Rails.root.join('spec/docs/v1/descriptions')
  config.headers_whitelist = %w[Accept X-Auth-Token]
end
