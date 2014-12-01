class HomeController < ApplicationController
  def index
       @index = Index.find(1)
       @veilles = Veille.where("langue = '#{I18n.locale}'").order('updated_at DESC').limit(3)
       if I18n.locale == :en
         @map = @index.streeten
       else
         @map = @index.street
       end
  end

  def associe
    @associes = Associe.all.order('updated_at DESC').paginate(:page => params[:page])
  end

  def honoraire
        @honoraire = Honoraire.find(1)
  end

  def contact
        @contact = Contact.find(1)
  end

  def specialite
        @specialite = Specialite.find(1)
  end

  def actualite
  	@veilles = Veille.where("langue = '#{I18n.locale}'").order('updated_at DESC').paginate(:page => params[:page])
  end

  def turn_en
    I18n.locale = :en
    redirect_to :back and return
  end

  def turn_fr
    I18n.locale = :fr
    redirect_to :back and return
  end
end
