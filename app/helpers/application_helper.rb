module ApplicationHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    if user.image
      user.image
    else
      "https://s.gravatar.com/avatar/37394dc5b207d947ad0e136be9f97910?s=80"
    end
  end
end
