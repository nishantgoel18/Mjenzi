module NewDesignHelper

	def header_path
		if request.path == root_path
			render template: 'layouts/new_design_header_dark' 
		else
			render template: 'layouts/new_design_header' 	
		end
	end	
end