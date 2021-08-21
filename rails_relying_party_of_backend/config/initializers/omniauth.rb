require 'omniauth/strategies/my_op'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :my_op,
            ENV['CLIENT_ID_OF_MY_OP'],
            ENV['CLIENT_SECRET_OF_MY_OP']

end