class GroupesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_groupe, only: [:show, :edit, :update, :destroy]

  # GET /groupes
  # GET /groupes.json
  def index
    authorize Groupe
    @groupes = Groupe.all
  end

  # GET /groupes/1
  # GET /groupes/1.json
  def show
    authorize @groupe
  end

  # GET /groupes/new
  def new
    @groupe = Groupe.new
    @groupe.sorties.build
  end

  # GET /groupes/1/edit
  def edit
    authorize @groupe
    @groupe.sorties.build
  end

  # POST /groupes
  # POST /groupes.json
  def create
    @groupe = Groupe.new(groupe_params)
    authorize @groupe

    respond_to do |format|
      if @groupe.save
        format.html { redirect_to @groupe, notice: 'Groupe was successfully created.' }
        format.json { render :show, status: :created, location: @groupe }
      else
        format.html { render :new }
        format.json { render json: @groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groupes/1
  # PATCH/PUT /groupes/1.json
  def update
    authorize @groupe
    respond_to do |format|
      if @groupe.update(groupe_params)
        format.html { redirect_to @groupe, notice: 'Groupe was successfully updated.' }
        format.json { render :show, status: :ok, location: @groupe }
      else
        format.html { render :edit }
        format.json { render json: @groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupes/1
  # DELETE /groupes/1.json
  def destroy
    authorize @groupe
    @groupe.destroy
    respond_to do |format|
      format.html { redirect_to groupes_url, notice: 'Groupe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groupe
      @groupe = Groupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def groupe_params
      params.require(:groupe).permit(:organisation_id, :activité_id, :nom, sorties_attributes: [:id, :le, :lieu])
    end
end
