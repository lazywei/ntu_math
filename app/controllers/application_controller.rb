# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :allow_cross_site_access
  def after_sign_in_path_for(resource)
    admin_root_path
  end

  def allow_cross_site_access
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE"
    response.headers["Access-Control-Allow-Headers"] = "Content-Type, X-Requested-With"
  end
end
