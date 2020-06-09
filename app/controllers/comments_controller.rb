class CommentsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    def create
        @comment = current_user.comments.build(comment_params)
        if @comment.save
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    def destroy
        @comment.destroy
        redirect_to request.referrer || root_url
    end
    private
        def comment_params
            params.require(:comment).permit(:content_coment, :micropost_id)
        end
        def logged_in_user
            unless logged_in?
              store_location
              flash[:danger] = "Please login."
              redirect_to login_url
            end
          end
end

