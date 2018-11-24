# require 'rails_helper'
#
# RSpec.describe PostsController, type: :controller do
#
#   before(:each) do
#     user = double('user')
#     allow(request.env['warden']).to receive(:authenticate!).and_return(user)
#     allow(controller).to receive(:current_user).and_return(user)
#   end
#
#   describe "GET #new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end
#
#   describe "GET #create" do
#     it "returns http success" do
#       get :create
#       expect(response).to have_http_status(:success)
#     end
#   end
#
#   describe "GET #edit" do
#     it "returns http success" do
#       get :edit
#       expect(response).to have_http_status(:success)
#     end
#   end
#
#   describe "GET #update" do
#     it "returns http success" do
#       get :update
#       expect(response).to have_http_status(:success)
#     end
#   end
#
#   describe "GET #destory" do
#     it "returns http success" do
#       get :destory
#       expect(response).to have_http_status(:success)
#     end
#   end
#
# end
