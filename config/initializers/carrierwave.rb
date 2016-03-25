CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'google',                        # required
    :google_storage_access_key_id      => 'GOOGBGPRKEJ6RPLUIHMK',                        # required
    :google_storage_secret_access_key  => '1YwXH3EiU2Sg7Xwrnen/ofkfhnlmoXSi9GgEP3mv',                        # required
  }
  config.fog_directory  = 'projectm'                     # required
end


# CarrierWave.configure do |config|
#   config.fog_provider = 'fog-google'                        # required
#   config.fog_credentials = {
#     provider:                         'Google',
#     google_storage_access_key_id:     'GOOGBGPRKEJ6RPLUIHMK',
#     google_storage_secret_access_key: '1YwXH3EiU2Sg7Xwrnen/ofkfhnlmoXSi9GgEP3mv'
#   }
#   config.fog_directory = 'projectm'
# end
