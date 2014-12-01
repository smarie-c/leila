class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  	@index = Index.find(1)
  	@honoraire = Honoraire.find(1)
  	@contact = Contact.find(1)
  	@specialite = Specialite.find(1)
  end

  def actualite
  	@veilles = Veille.where("langue = '#{I18n.locale}'").order('updated_at DESC').paginate(:page => params[:page])
  end

  def update_actualite
  	begin
	  	veille = Veille.find(params[:id])
	rescue Exception => e
		redirect_to user_actualite_path, :flash => { :alert => "l'actualité cherché n'a pas été trouvée." } and return
	end
	veille.titre = params[:titre]
	veille.texte = params[:texte]
	begin
	  	veille.save
	rescue Exception => e
		redirect_to user_actualite_path, :flash => { :alert => "l'actualité n'a pas été mise à jour." } and return
	end
	redirect_to user_actualite_path, :flash => { :notice => "l'actualité a été mise à jour." } and return
  end

  def delete_actualite
  	begin
	  	veille = Veille.find(params[:id])
	rescue Exception => e
		redirect_to user_actualite_path, :flash => { :alert => "l'actualité cherché n'a pas été trouvée." } and return
	end
	begin
	  	veille.destroy
	rescue Exception => e
		redirect_to user_actualite_path, :flash => { :alert => "l'actualité n'a pas été supprimée." } and return
	end
	redirect_to user_actualite_path, :flash => { :notice => "l'actualité a été supprimée." } and return
  end

  def create_actualite
  	veille = Veille.new
  	veille.titre = params[:titre]
	veille.texte = params[:texte]
	veille.langue = I18n.locale
	veille.veille_type = params[:veille_type]
  	begin
	  	veille.save
	rescue Exception => e
		redirect_to user_actualite_path, :flash => { :alert => "l'actualité n'a pas été créé." } and return
	end
	redirect_to user_actualite_path, :flash => { :notice => "l'actualité a été créé." } and return
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
		index.firstname = params[:firstname]
		index.name = params[:name]
		index.street = params[:street]
		index.cp = params[:cp]
		index.city = params[:city]
		index.phone = params[:phone]
		index.fax = params[:fax]
		index.mobile = params[:mobile]
		index.titre1 = params[:titre1]
		index.contenu1 = params[:contenu1]
		index.titre2 = params[:titre2]
		index.contenu2 = params[:contenu2]
		index.titre3 = params[:titre3]
		index.contenu3 = params[:contenu3]
		index.titre4 = params[:titre4]
		index.contenu4 = params[:contenu4]
		index.titre5 = params[:titre5]
		index.contenu5 = params[:contenu5]
	else
		index.firstnameen = params[:firstnameen]
		index.nameen = params[:nameen]
		index.streeten = params[:streeten]
		index.cpen = params[:cpen]
		index.cityen = params[:cityen]
		index.phoneen = params[:phoneen]
		index.faxen = params[:faxen]
		index.mobileen = params[:mobileen]
		index.titre1en = params[:titre1en]
		index.contenu1en = params[:contenu1en]
		index.titre2en = params[:titre2en]
		index.contenu2en = params[:contenu2en]
		index.titre3en = params[:titre3en]
		index.contenu3en = params[:contenu3en]
		index.titre4en = params[:titre4en]
		index.contenu4en = params[:contenu4en]
		index.titre5en = params[:titre5en]
		index.contenu5en = params[:contenu5en]
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
		honoraire.contenu = params[:contenu]
	else
		honoraire.contenuen = params[:contenuen]
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
		contact.contenu = params[:contenu]
	else
		contact.contenuen = params[:contenuen]
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
		specialite.contenu = params[:contenu]
	else
		specialite.contenuen = params[:contenuen]
	end
	begin
	  	specialite.save
	rescue Exception => e
		redirect_to user_path, :flash => { :alert => "l'associé n'a pas été mise à jour." } and return
	end
	redirect_to user_path, :flash => { :notice => "l'associé a été mise à jour." } and return
  end
end
