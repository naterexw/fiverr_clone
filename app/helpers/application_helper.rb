module ApplicationHelper
  def get_avatar_url(user, size)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    default_url = "http://www.gravatar.com/avatar"
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=#{size}&d=#{CGI::escape(default_url)}"
  end
end
