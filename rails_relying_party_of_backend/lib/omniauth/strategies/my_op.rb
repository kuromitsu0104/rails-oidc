require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class MyOp < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, 'my_op'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        site: "#{ENV['OIDC_PROVIDER_HOST']}/oauth/authorize"
      }

      # scope=openid としてリクエスト
      option :scope, 'openid'
    end
  end
end