class MusicUploader < CarrierWave::Uploader::Base

  storage :fog
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  def extension_white_list
      %w(mp3 ogg wav)
   end


end
