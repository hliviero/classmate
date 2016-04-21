require 'rails_helper'

RSpec.describe StudentsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    let(:student) { create(:student) }
    it "returns http success" do
      get :edit, id: student.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "create new student" do
      params = { student: { name: "João"} }
      expect { post :create, params }.to change{Student.count}.from(0).to(1)
    end
  end

end
