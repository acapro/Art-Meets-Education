class KidsController < ApplicationController
  layout 'admin'
  before_action :set_kid, only: [:show, :edit, :update, :destroy]

  # GET /kids/1
  # GET /kids/1.json
  def show
  end

  # GET /kids/new
  def new
    @project = Project.find(params[:project_id])
    @kid = @project.kids.build
  end

  # GET /kids/1/edit
  def edit
  end

  # POST /kids
  # POST /kids.json
  def create
    @project = Project.find(params[:project_id])
    @kid = @project.kids.create(kid_params)

    respond_to do |format|
      if @kid.save
        format.html { redirect_to project_path(@project), notice: 'Kid was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /kids/1
  # PATCH/PUT /kids/1.json
  def update
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to @kid, notice: 'Kid was successfully updated.' }
        format.json { render :show, status: :ok, location: @kid }
      else
        format.html { render :edit }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kids/1
  # DELETE /kids/1.json
  def destroy
    @kid = Kid.find(params[:id])
    @project = @kid.project
    @kid.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@project) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kid
      @kid = Kid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kid_params
      params.require(:kid).permit(:name, :project_id)
    end
end
