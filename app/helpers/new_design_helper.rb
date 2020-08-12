module NewDesignHelper

	def header_path
    pages_to_show_dark_header = [root_path, new_user_session_path, retail_cloud_path, other_cloud_path, backup_cloud_path, voice_solutions_path, networking_solutions_path, bare_metal_as_service_path, vmware_cloud_solutions_path, desktop_as_service_path, faq_path, contact_us_path]

		if pages_to_show_dark_header.include?(request.path) or params[:controller].include?('admin') or params[:controller] == 'blogs' or params[:controller] == 'categories'
			render template: 'layouts/new_design_header_dark' 
		else
			render template: 'layouts/new_design_header' 	
		end
	end	
end