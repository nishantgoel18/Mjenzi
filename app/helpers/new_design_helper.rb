module NewDesignHelper

	def header_path
		if request.path == root_path or request.path == new_user_session_path or params[:controller].include?('admin')
			render template: 'layouts/new_design_header_dark' 
		else
			render template: 'layouts/new_design_header' 	
		end
	end	
end