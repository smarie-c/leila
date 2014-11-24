class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  	@index = Index.find(1)
  	@honoraire = Honoraire.find(1)
  	@contact = Contact.find(1)
  	@specialite = Specialite.find(1)
  end

  def veille
  	@veilles = Veille.all.order('updated_at DESC').paginate(:page => params[:page])
  end

  def update_veille
  	begin
	  	veille = Veille.find(params[:id])
	rescue Exception => e
		redirect_to user_veille_path, :flash => { :alert => "la veille cherché n'a pas été trouvée." } and return
	end
	veille.titre = params[:titre]
	veille.texte = params[:texte]
	begin
	  	veille.save
	rescue Exception => e
		redirect_to user_veille_path, :flash => { :alert => "la veille n'a pas été mise à jour." } and return
	end
	redirect_to user_veille_path, :flash => { :notice => "la veille a été mise à jour." } and return
  end

  def delete_veille
  	begin
	  	veille = Veille.find(params[:id])
	rescue Exception => e
		redirect_to user_veille_path, :flash => { :alert => "la veille cherché n'a pas été trouvée." } and return
	end
	begin
	  	veille.destroy
	rescue Exception => e
		redirect_to user_veille_path, :flash => { :alert => "la veille n'a pas été supprimée." } and return
	end
	redirect_to user_veille_path, :flash => { :notice => "la veille a été supprimée." } and return
  end

  def create_veille
  	veille = Veille.new
  	veille.titre = params[:titre]
	veille.texte = params[:texte]
  	begin
	  	veille.save
	rescue Exception => e
		redirect_to user_veille_path, :flash => { :alert => "la veille n'a pas été créé." } and return
	end
	redirect_to user_veille_path, :flash => { :notice => "la veille a été créé." } and return
  end

  def associe
  	@associes = Associe.all.order('updated_at DESC').paginate(:page => params[:page])
  end

  def update_associe
  	begin
	  	associe = Associe.find(params[:id])
	rescue Exception => e
		redirect_to user_associe_path, :flash => { :alert => "l'associé cherché n'a pas été trouvé." } and return
	end
	associe.name = params[:name]
	associe.description = params[:description]
	associe.link = associe.ext_url(params[:link])
	associe.pics = params[:pics]
	begin
	  	associe.save
	rescue Exception => e
		redirect_to user_associe_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_associe_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end


  def delete_associe
  	begin
	  	associe = Associe.find(params[:id])
	rescue Exception => e
		redirect_to user_associe_path, :flash => { :alert => "l'associé cherché n'a pas été trouvé." } and return
	end
	begin
	  	associe.destroy
	rescue Exception => e
		redirect_to user_associe_path, :flash => { :alert => "ll'associé n'a pas été supprimé." } and return
	end
	redirect_to user_associe_path, :flash => { :notice => "l'associé a été supprimé." } and return
  end

  def create_associe
  	associe = Associe.new
  	associe.name = params[:name]
	associe.description = params[:description]
	associe.link = associe.ext_url(params[:link])
	associe.pics = params[:pics]
  	begin
	  	associe.save
	rescue Exception => e
		redirect_to user_associe_path, :flash => { :alert => "l'associé n'a pas été créé." } and return
	end
	redirect_to user_associe_path, :flash => { :notice => "l'associé a été créé." } and return
  end

  def update_index
  	begin
	  	index = Index.find(1)
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé cherché n'a pas été trouvé." } and return
	end
	index.texte1 = params[:texte1]
	index.texte2 = params[:texte2]
	index.texte3 = params[:texte3]
	index.texte4 = params[:texte4]
	begin
	  	index.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end

  def update_honoraire
  	begin
	  	honoraire = Honoraire.find(1)
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé cherché n'a pas été trouvé." } and return
	end
	honoraire.texte1 = params[:texte1]
	begin
	  	honoraire.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end

  def update_contact
  	begin
	  	contact = Contact.find(1)
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé cherché n'a pas été trouvé." } and return
	end
	contact.texte1 = params[:texte1]
	begin
	  	contact.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end

  def update_specialite
  	begin
	  	specialite = Specialite.find(1)
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé cherché n'a pas été trouvé." } and return
	end
	specialite.texte1 = params[:texte1]
	begin
	  	specialite.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end
end
