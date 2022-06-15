class PilotesController < ApplicationController
  before_action :set_pilote, only: %i[ show edit update destroy ]

  # GET /pilotes or /pilotes.json
  def index
    @equipe = Equipe.all
    @pilotes = Pilote.all
  end

  def info
    @pilotes = Pilote.all
  end

  def grille
   
  end

  # GET /pilotes/1 or /pilotes/1.json
  def show
    @equipe = Equipe.all
  end

  # GET /pilotes/new
  def new
    @equipe = Equipe.all
    @pilote = Pilote.new
  end

  # GET /pilotes/1/edit
  def edit
    @equipe = Equipe.all
  end

  # POST /pilotes or /pilotes.json
  def create
    @equipe = Equipe.all
    @pilote = Pilote.new(pilote_params)

    respond_to do |format|
      if @pilote.save
        format.html { redirect_to pilote_url(@pilote), notice: "Le pilote a bien été créé." }
        format.json { render :show, status: :created, location: @pilote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pilote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pilotes/1 or /pilotes/1.json
  def update
    respond_to do |format|
      if @pilote.update(pilote_params)
        format.html { redirect_to pilote_url(@pilote), notice: "Le pilote a bien été mis à jour." }
        format.json { render :show, status: :ok, location: @pilote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pilote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilotes/1 or /pilotes/1.json
  def destroy
    @pilote.destroy

    respond_to do |format|
      format.html { redirect_to pilotes_url, notice: "Le pilote a bien été supprimé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pilote
      @pilote = Pilote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pilote_params
      params.require(:pilote).permit(:nom, :statut, :ecurie, :division)
    end
end
