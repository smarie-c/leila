class Associe < ActiveRecord::Base
	def ext_url url
		if (/^http/i.match(url))
			return url
		else
			return "http://" + url
		end
	end
end
