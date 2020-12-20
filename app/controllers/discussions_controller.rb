class DiscussionsController < ApplicationController
    before_action :authenticate_user!

    def create 
        Discussion.create(discussion_params)
        redirect_to pages_groupe_path(groupe_id: discussion_params[:groupe_id])
    end

private
    # Only allow a list of trusted parameters through.
    def discussion_params
      params.permit(:groupe_id, :user_id, :message)
    end

end