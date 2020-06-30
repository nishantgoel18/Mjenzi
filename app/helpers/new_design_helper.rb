module NewDesignHelper

	def header_path
		if request.path == '/home'
			render template: 'layouts/new_design_header_dark' 
		else
			render template: 'layouts/new_design_header' 
		end
	end	
end