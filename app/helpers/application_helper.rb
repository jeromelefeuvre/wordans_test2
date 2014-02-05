module ApplicationHelper
  def sign_in_root_path
    user_signed_in? ? root_path : public_path
  end
end
