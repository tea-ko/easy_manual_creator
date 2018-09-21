module ContentsHelper
  def choose_new_or_edit
    if action_name == :new || action_name == :confirm
      confirm_contents_path
    elsif action_name == :edit
      content_path
    end
  end
end
