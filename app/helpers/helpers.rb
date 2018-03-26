class Helpers
  def current_user(session_hash)
    User.find(session_hash[:id])
  end

  def is_logged_in?(session_hash)
    id == session_hash[:id] ? true : false
  end
end
