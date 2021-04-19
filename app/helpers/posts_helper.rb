module PostsHelper
  def author_name(post)
    "Author name: #{post.user.user_name}" if user_signed_in?
  end

  def my_link_to
    if user_signed_in?
      link_to 'Create new post ', new_post_path
    else
      (link_to 'Login', user_session_path)
    end
  end

  def sign_up
    link_to 'Signup', new_user_registration_path unless user_signed_in?
  end
end
