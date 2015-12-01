require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do
  describe "GET new" do
    it "is successful" do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe "GET show" do
    let(:album) do
      Album.create(name: "Brawn")
    end
    it "renders the show view" do
      get :show, id: album.id
      expect(response.status).to eq 200
    end
  end

  describe "GET edit" do
    let(:album) do
      Album.create(name: "Prawn")
    end
    it "renders the edit view" do
      get :edit, id: album.id
      expect(response.status).to eq 200
    end
  end


end
