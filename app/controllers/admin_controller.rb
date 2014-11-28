class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  	@index = Index.find(1)
  	@honoraire = Honoraire.find(1)
  	@contact = Contact.find(1)
  	@specialite = Specialite.find(1)
  end

  def veille
  	@veilles = Veille.where("langue = '#{I18n.locale}'").order('updated_at DESC').paginate(:page => params[:page])
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
	veille.langue = I18n.locale
	veille.veille_type = params[:veille_type]
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
	if I18n.locale == :fr
		index.texte1 = params[:texte1]
		index.texte2 = params[:texte2]
		index.texte3 = params[:texte3]
		index.texte4 = params[:texte4]
		index.texte5 = params[:texte5]
		index.fax = params[:fax]
		index.mobile = params[:mobile]
		index.texte6 = params[:texte6]
		index.texte7 = params[:texte7]
		index.texte8 = params[:texte8]
		index.texte9 = params[:texte9]
		index.texte10 = params[:texte10]
		index.texte11 = params[:texte11]
		index.texte12 = params[:texte12]
		index.texte13 = params[:texte13]
		index.texte14 = params[:texte14]
		index.texte15 = params[:texte15]
	else
		index.texte1en = params[:texte1en]
		index.texte2en = params[:texte2en]
		index.texte3en = params[:texte3en]
		index.texte4en = params[:texte4en]
		index.texte5en = params[:texte5en]
		index.faxen = params[:faxen]
		index.mobileen = params[:mobileen]
		index.texte6en = params[:texte6en]
		index.texte7en = params[:texte7en]
		index.texte8en = params[:texte8en]
		index.texte9en = params[:texte9en]
		index.texte10en = params[:texte10en]
		index.texte11en = params[:texte11en]
		index.texte12en = params[:texte12en]
		index.texte13en = params[:texte13en]
		index.texte14en = params[:texte14en]
		index.texte15en = params[:texte15en]
	end
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
	if I18n.locale == :fr
		honoraire.texte1 = params[:texte1]
	else
		honoraire.texte1en = params[:texte1en]
	end
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
	if I18n.locale == :fr
		contact.texte1 = params[:texte1]
	else
		contact.texte1en = params[:texte1en]
	end
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
	if I18n.locale == :fr
		specialite.texte1 = params[:texte1]
	else
		specialite.texte1en = params[:texte1en]
	end
	begin
	  	specialite.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end
end
