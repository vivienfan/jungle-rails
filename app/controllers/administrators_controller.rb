# class AdministratorsController < ApplicationController
#   def new
#     http_basic_authenticate_with name: 'Jungle', password: 'book'
#   end

#   def create
#     # @username = params[:administrator][:username]
#     # @password = params[:administrator][:password]
#     # if @username == ENV['ADMIN_USERNAME'] && @password == ENV['ADMIN_PASSWORD']
#     #   session[:admin] = @username
#     #   redirect_to '/'
#     # else
#     #   redirect_to new_administrator_path
#     # end
#   end

#   def destroy
#     session[:admin] = nil
#     redirect_to root_path
#   end
# end
