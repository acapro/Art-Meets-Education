class PressKitsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  before_action :set_press_kit, only: [:show, :edit, :update, :destroy]

  # GET /press_kits
  # GET /press_kits.json
  def index
    @press_kits = PressKit.all
  end

  # GET /press_kits/1
  # GET /press_kits/1.json
  def show
  end

  # GET /press_kits/new
  def new
    @press_kit = PressKit.new
  end

  # GET /press_kits/1/edit
  def edit
  end

  # POST /press_kits
  # POST /press_kits.json
  def create
    @press_kit = PressKit.new(press_kit_params)

    respond_to do |format|
      if @press_kit.save
        format.html { redirect_to @press_kit, notice: 'Press kit was successfully created.' }
        format.json { render :show, status: :created, location: @press_kit }
      else
        format.html { render :new }
        format.json { render json: @press_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /press_kits/1
  # PATCH/PUT /press_kits/1.json
  def update
    respond_to do |format|
      if @press_kit.update(press_kit_params)
        format.html { redirect_to @press_kit, notice: 'Press kit was successfully updated.' }
        format.json { render :show, status: :ok, location: @press_kit }
      else
        format.html { render :edit }
        format.json { render json: @press_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /press_kits/1
  # DELETE /press_kits/1.json
  def destroy
    @press_kit.destroy
    respond_to do |format|
      format.html { redirect_to press_kits_url, notice: 'Press kit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_press_kit
      @press_kit = PressKit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def press_kit_params
      params.require(:press_kit).permit(:title, :kit)
    end
end
