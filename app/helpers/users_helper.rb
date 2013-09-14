module UsersHelper
  # return the gravatar (http://gravatar.com/) for the given user
  
  
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def gravatar_logo_for
    idealogo = "italiandealings@gmail.com" 
    gravatar_id = Digest::MD5::hexdigest(idealogo)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png"
    image_tag(gravatar_url, alt: idealogo, class: "gravatar")
  end
  
end
