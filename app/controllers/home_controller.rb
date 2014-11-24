class HomeController < ApplicationController
  def index
  end

  def associe
  end

  def honoraire
  end

  def contact
  end

  def specialite
  end

  def veille
  	@veilles = Veille.all.order('updated_at DESC').paginate(:page => params[:page])
  end
end
