# app/auth/authenticate_user.rb
class AuthenticateUser
  def initialize(username, password)
    @username = username
    @password = password
  end

  # Service entry point
  def call
    puts 'ENCODING user_id :' 
    puts user.id
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :username, :password

  # verify user credentials
  def user
    user = User.find_by(username: username)
  
    return user if user && user.authenticate(password)
    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end