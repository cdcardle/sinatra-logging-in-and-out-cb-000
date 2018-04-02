class Helpers < ActiveRecord::Base
  def current_user(session_hash)
    User.find(session_hash[:user_id])
  end

  def is_logged_in?(session_hash)
    id == session_hash[:user_id] ? true : false
  end
end
