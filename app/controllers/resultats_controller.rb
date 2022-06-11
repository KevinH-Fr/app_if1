class ResultatsController < ApplicationController
  before_action :set_resultat, only: %i[ show edit update destroy ]

  # GET /resultats or /resultats.json
  def index
    
    @pilote = Pilote.all
    @equipe = Equipe.all
    @event = Event.all
    @resultats = Resultat.all
  end

  # GET /resultats/1 or /resultats/1.json
  def show
    @valPoints = valPoints
    @pilote = Pilote.all
  end

  # GET /resultats/new
  def new
    @event = Event.all
    @pilote = Pilote.all
    @resultat = Resultat.new
   
  end

  # GET /resultats/1/edit
  def edit
    @valPoints = valPoints
    @event = Event.all
    @pilote = Pilote.all
  end

  # POST /resultats or /resultats.json
  def create
    @pilote = Pilote.all
    @resultat = Resultat.new(resultat_params)

    respond_to do |format|
      if @resultat.save
        format.html { redirect_to resultat_url(@resultat), notice: "Resultat was successfully created." }
        format.json { render :show, status: :created, location: @resultat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resultat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resultats/1 or /resultats/1.json
  def update
    respond_to do |format|
      if @resultat.update(resultat_params)
        format.html { redirect_to resultat_url(@resultat), notice: "Resultat was successfully updated." }
        format.json { render :show, status: :ok, location: @resultat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resultat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resultats/1 or /resultats/1.json
  def destroy
    @resultat.destroy

    respond_to do |format|
      format.html { redirect_to resultats_url, notice: "Resultat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private



    # Use callbacks to share common setup or constraints between actions.
    def set_resultat
      @resultat = Resultat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resultat_params
      params.require(:resultat).permit(:event_id, :pilote_id, :qualification, :course, :dotd, :mt, :score)
    end

    def valPoints
      if @resultat.course == 1 
         pointsCourse = 25
      else 
        if @resultat.course == 2 
          pointsCourse = 18 
        else 
          if @resultat.course == 3 
            pointsCourse = 15 
          else 
            if @resultat.course == 4 
              pointsCourse = 12 
            else 
              if @resultat.course == 5 
                pointsCourse = 10 
              else 
                if @resultat.course == 6 
                  pointsCourse = 8 
                else
                  if @resultat.course == 7 
                    pointsCourse = 6 
                  else
                    if @resultat.course == 8 
                      pointsCourse = 4 
                    else
                      if @resultat.course == 9 
                        pointsCourse = 2 
                      else 
                        if @resultat.course == 10
                          pointsCourse = 1 
                        else
                          pointsCourse = 0
                        end
                      end 
                    end
                  end 
                end
              end 
            end
          end 
        end
      end 

      if @resultat.dotd == true 
         scoreDotd = 1 
      end 
      if @resultat.mt == true 
         scoreMt = 1 
      end 

      calculAuto = pointsCourse  + scoreDotd.to_i + scoreMt.to_i 
      calculAuto
      
    end
    
end
