class ImagesController < ApplicationController
  before_action :authenticate_admin!

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.js   { render :layout => false }
    end
  end

  private
    def image_params
      params.require(:image).permit(:id)
    end
end
