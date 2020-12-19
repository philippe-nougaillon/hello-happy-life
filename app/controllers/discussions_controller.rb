class DiscussionsController < ApplicationController
    before_action :authenticate_user!

    def create 
        @discussion = Discussion.new(discussion_params)
        @discussion.save
        redirect_to pages_groupe_path(groupe_id: @discussion.groupe.id)
    end

private
    # Use callbacks to share common setup or constraints between actions.
    # def set_groupe
    #   @groupe = Groupe.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def discussion_params
      params.require(:discussion).permit(:groupe_id, :user_id, :message)
    end

end