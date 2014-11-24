class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  	@veilles = Veille.all.order('updated_at DESC')
  end

  def update_veille
  end

  def delete_veille
  end

  def create_veille
  end
end
