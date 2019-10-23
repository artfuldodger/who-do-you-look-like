class ImageUpload
  include ActiveModel::Model

  attr_accessor :image

  def publicify
    return @public_path if @public_path.present?

    file = File.open(image.path)
    new_file = File.open(Rails.root.join('public/uploads/', image.original_filename), 'w')
    new_file << file.read
    new_file.close

    @public_path = 'uploads/' + image.original_filename
  end
end
