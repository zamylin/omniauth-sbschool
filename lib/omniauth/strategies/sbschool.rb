require 'omniauth-oauth2'

module Omniauth
	module Strategies
		module Sbschool < OmniAuth::Strategies::OAuth2
      option :name, 'sbschool'

      uid { raw_info['client_id'] }

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/').parsed || {}
      end

      def callback_url
        full_host + script_name + callback_path
      end

		end
	end
end
