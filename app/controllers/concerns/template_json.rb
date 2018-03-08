module TemplateJson
	def self.success(data, message)
		{data: data, message: message, code: 200}
	end

	def self.success_message(message)
		{message: message, code: 200}
	end

	def self.error(message)
		{message: message, code: 500}
	end
end