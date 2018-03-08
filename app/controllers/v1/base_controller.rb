class V1::BaseController < ApplicationController
	def success_template(data, message)
		TemplateJson.success(data, message)
	end

	def success_message_template(message)
		TemplateJson.success_message(message)
	end

	def error_template(message)
		TemplateJson.error(message)
	end
end
