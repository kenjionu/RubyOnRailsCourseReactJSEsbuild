module ApplicationHelper
    def login_helper
    if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path, method: :get,  class: "text-sm font-semibold leading-6 text-gray-900").html_safe + 
      (link_to "Login", new_user_session_path, method: :get,  class: "text-sm font-semibold leading-6 text-gray-900") 
    else 
      link_to "Logout", destroy_user_session_path, class: "text-sm font-semibold leading-6 text-gray-900", data: { turbo_method: :delete } 
     end 
    end
    def source_helper(layout_name)
        if session[:source] 
            greeting = "Thanks for visiting me from  #{session[:source]} and you are no the #{layout_name} layout"
            content_tag(:p, greeting, class:"source-greeting")
      end 
    end
    def copyright_generator
      @copyright = CesarViewTool::Renderer.copyright 'Cesar Casares', 'All Right Reserved'
    end
end