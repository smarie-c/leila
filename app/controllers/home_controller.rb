class HomeController < ApplicationController
  def index
       @index = Index.find(1)
       if I18n.locale == :en
         @map = @index.texte3en
       else
         @map = @index.texte3
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

  def veille
  	@veilles = Veille.all.order('updated_at DESC').paginate(:page => params[:page])
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
