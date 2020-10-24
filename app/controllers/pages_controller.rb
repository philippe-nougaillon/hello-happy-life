class PagesController < ApplicationController
  def home
    if current_user 
      @groupes = current_user.organisation.groupes
    else
      @groupes = []
    end
  end
end
