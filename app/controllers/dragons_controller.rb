class DragonsController < ApplicationController
  before_action :set_dragon, only: %i[ show edit update destroy ]

  # GET /dragons or /dragons.json
  def index
    @dragons = Dragon.all
  end

  # GET /dragons/1 or /dragons/1.json
  def show
  end

  # GET /dragons/new
  def new
    @dragon = Dragon.new
  end

  # GET /dragons/1/edit
  def edit
  end

  # POST /dragons or /dragons.json
  def create
    @dragon = Dragon.new(dragon_params)

    respond_to do |format|
      if @dragon.save
        format.html { redirect_to @dragon, notice: "Dragon was successfully created." }
        format.json { render :show, status: :created, location: @dragon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dragon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dragons/1 or /dragons/1.json
  def update
    respond_to do |format|
      if @dragon.update(dragon_params)
        format.html { redirect_to @dragon, notice: "Dragon was successfully updated." }
        format.json { render :show, status: :ok, location: @dragon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dragon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dragons/1 or /dragons/1.json
  def destroy
    @dragon.destroy
    respond_to do |format|
      format.html { redirect_to dragons_url, notice: "Dragon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dragon
      @dragon = Dragon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dragon_params
      params.require(:dragon).permit(:name, :birth_date, :color, :characteristics)
    end
end
