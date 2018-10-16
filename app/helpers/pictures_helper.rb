module PicturesHelper
  def choose_new_or_edit
    if action_name == "new" || action_name == "confirm"
      confirm_pictures_path
    elsif action_name == "edit"
      picture_path
    end
  end
end
