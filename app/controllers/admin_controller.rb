class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  	@veilles = Veille.all.order('updated_at DESC').paginate(:page => params[:page])
  end

  def update_veille
  	begin
	  	veille = Veille.find(param[:id])
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "la veille cherché n'a pas été trouvée." } and return
	end
	veille.titre = params[:titre]
	veille.texte = params[:texte]
	begin
	  	veille.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "la veille n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "la veille a été mise à jour." } and return
  end

  def delete_veille
  	begin
	  	veille = Veille.find(param[:id])
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "la veille cherché n'a pas été trouvée." } and return
	end
	begin
	  	veille.destroy
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "la veille n'a pas été supprimée." } and return
	end
	redirect_to user_path, :flash => { :notice => "la veille a été supprimée." } and return
  end

  def create_veille
  	veille = Veille.new
  	veille.titre = params[:titre]
	veille.texte = params[:texte]
  	begin
	  	veille.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "la veille n'a pas été créé." } and return
	end
	redirect_to user_path, :flash => { :notice => "la veille a été créé." } and return
  end
end
