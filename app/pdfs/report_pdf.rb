class ReportPdf < Prawn::Document

    def initialize(pilotes)
        super(top_margin: 30, :page_layout => :landscape)
        @pilotes = pilotes

      #  div = Pilote.params[:div]
        header
        liste
    end 
  
    def header
      #This inserts an image in the pdf file and sets the size of the image
      image "#{Rails.root}/app/assets/images/if1main.png", width: 530, height: 150

      text "test bis"
    end

    def liste

      @pilotes = @pilotes.where(statut: 'actif') 
     # div = Division.find(params[:div]) 

      text "#{@div}", style: :bold, color: "001133"


      @pilotes = @pilotes.where(division_id: 3) 

      @pilotes.each do |pilote|
     
        text "#{pilote.id}", style: :bold, color: "001133"
        text "#{pilote.nom}", style: :bold, color: "001133"
        text "#{pilote.ecurie}", style: :bold, color: "001133"
        text "#{pilote.division_id}", style: :bold, color: "001133"
      end
  
    end

end