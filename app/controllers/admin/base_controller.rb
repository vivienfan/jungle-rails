class Admin::BaseController < ApplicationController
  before_action :authorize

  def authorize
    authenticate_or_request_with_http_basic do |user, password|
      if user == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
        true
      end
    end
  end
end