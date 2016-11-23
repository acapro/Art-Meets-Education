class PressSectionsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  before_action :set_press_section, only: [:show, :edit, :update, :destroy]

  # GET /press_sections
  # GET /press_sections.json
  def index
    @press_sections = PressSection.all
  end

  # GET /press_sections/1
  # GET /press_sections/1.json
  def show
  end

  # GET /press_sections/new
  def new
    @press_section = PressSection.new
  end

  # GET /press_sections/1/edit
  def edit
  end

  # POST /press_sections
  # POST /press_sections.json
  def create
    @press_section = PressSection.new(press_section_params)

    respond_to do |format|
      if @press_section.save
        format.html { redirect_to @press_section, notice: 'Press section was successfully created.' }
        format.json { render :show, status: :created, location: @press_section }
      else
        format.html { render :new }
        format.json { render json: @press_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /press_sections/1
  # PATCH/PUT /press_sections/1.json
  def update
    respond_to do |format|
      if @press_section.update(press_section_params)
        format.html { redirect_to @press_section, notice: 'Press section was successfully updated.' }
        format.json { render :show, status: :ok, location: @press_section }
      else
        format.html { render :edit }
        format.json { render json: @press_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /press_sections/1
  # DELETE /press_sections/1.json
  def destroy
    @press_section.destroy
    respond_to do |format|
      format.html { redirect_to press_sections_url, notice: 'Press section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_press_section
      @press_section = PressSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def press_section_params
      params.require(:press_section).permit(:path, :nav, :content)
    end
end
