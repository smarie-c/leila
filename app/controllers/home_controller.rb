class HomeController < ApplicationController
  def index
        @index = Index.find(1)
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
end
