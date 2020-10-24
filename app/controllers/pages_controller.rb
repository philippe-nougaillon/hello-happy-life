class PagesController < ApplicationController

  def home
    @groupes = []
    if current_user
      @groupes = current_user.organisation.groupes.includes(:activité)
      unless params[:activité].blank? 
        @groupes = @groupes.where(activité_id: params[:activité])
      end
    end
  end

  def groupe
    @groupe = current_user.organisation.groupes.find(params[:groupe_id])

    unless params[:rejoindre].blank?
      unless @groupe.users.include?(current_user) 
        @groupe.users << current_user
        flash[:notice] = "Membre ajouté"
      else
        flash[:alert] = "Membre déjà inscrit !"
      end
    end
  end

end
