Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '344914352305502', 'ac787e2667d406843fe07abb1de63db7'
 # provider :facebook, '20...my_app_id', 'bc...my_app_secret'
 # provider :facebook, '20...my_app_id', 'bc...my_app_secret'
  
end