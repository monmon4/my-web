class CommentsController < ApplicationController

  def create
  	if comment_parent[:slide_id] != nil
    @comment = Slide.find_by(id: comment_parent[:slide_id]).comments.new(comment_params)
    @comment.user = current_user
      if @comment.save
      	redirect_to document_slide_path({id: comment_parent[:slide_id], document_id: comment_parent[:document_id]}), notice: 'Document was successfully created.'
      else
		redirect_to documents_path, alert: 'Comment was not successfully created.'
      end
  	else 
      if comment_parent[:document_id] != nil
  	@comment = Document.find_by(id: comment_parent[:document_id]).comments.new(comment_params)
    @comment.user = current_user
      if @comment.save
        redirect_to document_path({id: comment_parent[:document_id]}), notice: 'comment was successfully created.'
      else
    redirect_to documents_path, alert: 'Comment was not successfully created.'
      end
  	else
  	redirect_to documents_path, alert: 'Comment was not created.'
  	end
  end
  end

  def destroy
  	@comment = Comment.find_by(id: params[:id])
    if @comment.slide == nil 
      user = @comment.document.user
      dest = document_path({id: params[:document_id]})
    else
      user = @comment.document.user
      dest = document_slide_path({id: params[:slide_id], document_id: params[:document_id]})
    end
  	if current_user == user || current_user == @comment.user
    	@comment.destroy
	end
	redirect_to dest, notice: 'Comment was successfully destroyed.'

    end


    private

    def comment_parent
    	params.permit(:document_id, :slide_id)
    end

    def comment_params
      params.require(:comment).permit(:title, :content)
    end
end
