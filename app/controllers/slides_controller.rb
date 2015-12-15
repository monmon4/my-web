class SlidesController < ApplicationController
	before_action :set_slide, only: [:destroy, :show, :update]

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

  def update
    if exist = current_user.slides.find_by(id: params[:id])
      current_user.slides.delete(exist)
else
  current_user.slides << Slide.find_by(id: params[:id])
  end
  Slide.find_by(id: params[:id]).update(like: Slide.find_by(id: params[:id]).users.count ) 
  redirect_to document_slide_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide
      @slide = Slide.find(params[:id])
    end

end
