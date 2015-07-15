class SovietsController < ApplicationController
  before_action :set_soviet, only: [:show, :edit, :update, :destroy]

  # GET /soviets
  # GET /soviets.json
  def index
    @soviets = Soviet.all
  end

  # GET /soviets/1
  # GET /soviets/1.json
  def show
  end

  # GET /soviets/new
  def new
    @soviet = Soviet.new
  end

  # GET /soviets/1/edit
  def edit
  end

  # POST /soviets
  # POST /soviets.json
  def create
    @soviet = Soviet.new(soviet_params)

    respond_to do |format|
      if @soviet.save
        format.html { redirect_to @soviet, notice: 'Soviet was successfully created.' }
        format.json { render :show, status: :created, location: @soviet }
      else
        format.html { render :new }
        format.json { render json: @soviet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soviets/1
  # PATCH/PUT /soviets/1.json
  def update
    respond_to do |format|
      if @soviet.update(soviet_params)
        format.html { redirect_to @soviet, notice: 'Soviet was successfully updated.' }
        format.json { render :show, status: :ok, location: @soviet }
      else
        format.html { render :edit }
        format.json { render json: @soviet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soviets/1
  # DELETE /soviets/1.json
  def destroy
    @soviet.destroy
    respond_to do |format|
      format.html { redirect_to soviets_url, notice: 'Soviet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soviet
      @soviet = Soviet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soviet_params
      params.require(:soviet).permit(:name, :rank, :position, :experience, :about)
    end
end
