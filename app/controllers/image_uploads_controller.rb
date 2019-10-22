class ImageUploadsController < ApplicationController
  def new
    @image_upload = ImageUpload.new
  end

  def create
    @image_upload = ImageUpload.new(image_upload_params)
    @image_upload.publicify
  end

  private

  def image_upload_params
    params.require(:image_upload).permit(:image)
  end
end
