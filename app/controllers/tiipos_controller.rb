class TiiposController < ApplicationController
  before_action :set_tiipo, only: [:show, :edit, :update, :destroy]

  # GET /tiipos
  # GET /tiipos.json
  def index
    @tiipos = Tiipo.all
  end

  # GET /tiipos/1
  # GET /tiipos/1.json
  def show
  end

  # GET /tiipos/new
  def new
    @tiipo = Tiipo.new
  end

  # GET /tiipos/1/edit
  def edit
  end

  # POST /tiipos
  # POST /tiipos.json
  def create
    @tiipo = Tiipo.new(tiipo_params)

    respond_to do |format|
      if @tiipo.save
        format.html { redirect_to @tiipo, notice: 'Tiipo was successfully created.' }
        format.json { render :show, status: :created, location: @tiipo }
      else
        format.html { render :new }
        format.json { render json: @tiipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiipos/1
  # PATCH/PUT /tiipos/1.json
  def update
    respond_to do |format|
      if @tiipo.update(tiipo_params)
        format.html { redirect_to @tiipo, notice: 'Tiipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiipo }
      else
        format.html { render :edit }
        format.json { render json: @tiipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiipos/1
  # DELETE /tiipos/1.json
  def destroy
    @tiipo.destroy
    respond_to do |format|
      format.html { redirect_to tiipos_url, notice: 'Tiipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiipo
      @tiipo = Tiipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiipo_params
      params.require(:tiipo).permit(:nombre, :codigo)
    end
end
