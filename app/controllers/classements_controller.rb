class ClassementsController < ApplicationController
  before_action :set_classement, only: %i[ show edit update destroy ]

  def index
    @classements = Classement.all
    @divisions = Division.all
    @events = Event.all
    @pilotes = Pilote.all
    @resultats = Resultat.all
    @resultatsFiltres = Resultat.all
  
    if params[:eventId]
      @eventId = params[:eventId]

      @eventNum = Event.find(@eventId).numero 

      @resultatsFiltres = @resultats.where('event_id <= :event_id',
                   event_id: @eventId)

      @divisionId = Event.find(@eventId).division_id 

      @pilotes = Pilote.all
      @pilotesActifDiv = Pilote.all.where(statut: "actif", division_id: @divisionId)  
      
    else
      
      @resultats = Resultat.all
      @resultatsFiltres = Resultat.all
      @pilotesActifDiv = Pilote.all
    end

    respond_to do |format|
      format.html
      format.pdf do

       render pdf: "classementPilotes", template: "classements/liste", formats: [:html], layout: "pdf"
      end
    end


  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_classement
      @classement = Classement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classement_params
      params.fetch(:classement, {})
    end
end
