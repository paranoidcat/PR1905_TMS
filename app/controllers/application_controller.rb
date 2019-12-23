class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || current_admin.present? ? admins_dashboard_path : root_path
  end
end
