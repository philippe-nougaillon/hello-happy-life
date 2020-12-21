class DiscussionsController < ApplicationController
    before_action :authenticate_user!

    def create 
        @groupe = Groupe.find(discussion_params[:groupe_id])            
        Discussion.create(discussion_params)

        ActionCable.server.broadcast "groupe_#{ @groupe.id }",
            html: render_to_string('partials/_discussions', layout: false, locals: {groupe: @groupe})

        redirect_to pages_groupe_path(groupe_id: @groupe.id)
    end

private
    # Only allow a list of trusted parameters through.
    def discussion_params
      params.permit(:groupe_id, :user_id, :message)
    end

end