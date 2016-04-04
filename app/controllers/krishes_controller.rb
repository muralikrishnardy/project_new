class KrishesController < ApplicationController
  before_action :set_krish, only: [:show, :edit, :update, :destroy]

  # GET /krishes
  # GET /krishes.json
  def index
    @krishes = Krish.all
  end

  # GET /krishes/1
  # GET /krishes/1.json
  def show
  end

  # GET /krishes/new
  def new
    @krish = Krish.new
  end

  # GET /krishes/1/edit
  def edit
  end

  # POST /krishes
  # POST /krishes.json
  def create
    @krish = Krish.new(krish_params)

    respond_to do |format|
      if @krish.save
        format.html { redirect_to @krish, notice: 'Krish was successfully created.' }
        format.json { render action: 'show', status: :created, location: @krish }
      else
        format.html { render action: 'new' }
        format.json { render json: @krish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /krishes/1
  # PATCH/PUT /krishes/1.json
  def update
    respond_to do |format|
      if @krish.update(krish_params)
        format.html { redirect_to @krish, notice: 'Krish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @krish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /krishes/1
  # DELETE /krishes/1.json
  def destroy
    @krish.destroy
    respond_to do |format|
      format.html { redirect_to krishes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_krish
      @krish = Krish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def krish_params
      params.require(:krish).permit(:name, :location, :is_succes, :user_count, :employe_id, :user_id)
    end
end
