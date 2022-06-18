class SearchController < ApplicationController
  def index
    @q = Pilote.ransack(params[:q])
    @pilotes = @q.result(distinct: true)
  end
end
