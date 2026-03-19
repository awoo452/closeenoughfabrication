class ApplicationController < ActionController::Base
    before_action :set_app_content
  
    private
  
    def set_app_content
        @about_app_level = "4x4 and Off-Road related fabrication and development services, backed with a promise to always measure once; cut once twice."
        @contact_app_level = "We can help with your next fabrication related project!"
    end
  end