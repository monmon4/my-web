class SlidesController < ApplicationController
	before_action :set_slide, only: [:destroy, :show]

  def show
  end

  def create
  end

  def destroy
  	if current_user == @slide.document.user
    	@slide.destroy
	end
    respond_to do |format|
      format.html { redirect_to @slide.document, notice: 'Document was successfully destroyed.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide
      @slide = Slide.find(params[:id])
    end


end
