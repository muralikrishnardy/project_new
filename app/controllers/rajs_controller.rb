class RajsController < ApplicationController
  before_action :set_raj, only: [:show, :edit, :update, :destroy]

  # GET /rajs
  # GET /rajs.json
  def index
    @rajs = Raj.all
  end

  # GET /rajs/1
  # GET /rajs/1.json
  def show
  end

  # GET /rajs/new
  def new
    @raj = Raj.new
  end

  # GET /rajs/1/edit
  def edit
  end

  # POST /rajs
  # POST /rajs.json
  def create
    @raj = Raj.new(raj_params)

    respond_to do |format|
      if @raj.save
        format.html { redirect_to @raj, notice: 'Raj was successfully created.' }
        format.json { render action: 'show', status: :created, location: @raj }
      else
        format.html { render action: 'new' }
        format.json { render json: @raj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rajs/1
  # PATCH/PUT /rajs/1.json
  def update
    respond_to do |format|
      if @raj.update(raj_params)
        format.html { redirect_to @raj, notice: 'Raj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @raj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rajs/1
  # DELETE /rajs/1.json
  def destroy
    @raj.destroy
    respond_to do |format|
      format.html { redirect_to rajs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raj
      @raj = Raj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raj_params
      params.require(:raj).permit(:name, :age, :salary, :location, :job)
    end
end
