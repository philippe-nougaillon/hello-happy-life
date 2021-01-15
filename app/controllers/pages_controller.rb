class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:admin]

  def home
    @groupes = Groupe.left_joins(:users).group(:id).order("COUNT(users.id) DESC").includes(:activité)

    unless params[:activité].blank? 
      @groupes = @groupes.where(activité_id: params[:activité])
    end

  end

  def groupe
    @groupe = Groupe.find(params[:groupe_id])

    unless params[:rejoindre].blank?
      if current_user
        unless @groupe.users.include?(current_user) 
          @groupe.users << current_user
          flash[:notice] = "Bienvenue dans ce groupe !"
        end
      else
        flash[:alert] = "Vous devez vous connecter pour rejoindre ce groupe !"
      end
    end
  end

  def admin
  end

end
