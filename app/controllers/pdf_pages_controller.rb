class PdfPagesController < ApplicationController
    def show
      @pilote = Pilote.find(params[:pilote_id])
  
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: 'file_name'   
        end
      end
    end
  end