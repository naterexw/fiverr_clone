module ApplicationHelper
  def get_avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "htts://www.gravatar.com/avatar/#{gravater_id}.jpg?d=identical&s=150"
  end
end
