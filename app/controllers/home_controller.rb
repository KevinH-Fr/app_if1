class HomeController < ApplicationController


  def index
    @pilotes = Pilote.all
  end


end
