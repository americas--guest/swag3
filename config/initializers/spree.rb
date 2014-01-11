# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
	config.use_s3 = true
  config.s3_bucket = 'getchonkey'
  config.s3_access_key = "AKIAJUDZ3HDM3HNFZVNQ"
  config.s3_secret = "OiIWlrJRQNfnHcghxui+rsauRCZjfCYL9x1vMHeX"
  config.attachment_url = ":s3_eu_url"
  config.s3_host_alias = "s3-eu-west-1.amazonaws.com"
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"


end

  Paperclip.interpolates(:s3_eu_url) do |attachment, style|
"#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end

Spree.user_class = "User"

          Rails.application.config.to_prepare do
            require_dependency 'spree/authentication_helpers'
          end
