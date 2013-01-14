module PhotosHelper

  def validate_image(img_path)
      "<li><img src=\"#{img_path}\"></li>" if File.exist?(img_path)
  end
end