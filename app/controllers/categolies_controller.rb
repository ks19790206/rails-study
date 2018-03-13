class CategoliesController < ApplicationController
  before_action :set_categoly, only: [:show, :edit, :update, :destroy]

  # GET /categolies
  # GET /categolies.json
  def index
    @categolies = Categoly.all
  end

  # GET /categolies/1
  # GET /categolies/1.json
  def show
  end

  # GET /categolies/new
  def new
    @categoly = Categoly.new
  end

  # GET /categolies/1/edit
  def edit
  end

  # POST /categolies
  # POST /categolies.json
  def create
    @categoly = Categoly.new(categoly_params)

    respond_to do |format|
      if @categoly.save
        format.html { redirect_to @categoly, notice: 'Categoly was successfully created.' }
        format.json { render :show, status: :created, location: @categoly }
      else
        format.html { render :new }
        format.json { render json: @categoly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categolies/1
  # PATCH/PUT /categolies/1.json
  def update
    respond_to do |format|
      if @categoly.update(categoly_params)
        format.html { redirect_to @categoly, notice: 'Categoly was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoly }
      else
        format.html { render :edit }
        format.json { render json: @categoly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categolies/1
  # DELETE /categolies/1.json
  def destroy
    @categoly.destroy
    respond_to do |format|
      format.html { redirect_to categolies_url, notice: 'Categoly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoly
      @categoly = Categoly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoly_params
      params.require(:categoly).permit(:name, :description)
    end
end
