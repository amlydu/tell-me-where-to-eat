class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user.present?
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)

    if user.present? && user.authenticate(password)
      return user
    else
      errors.add :user_authentication, 'invalid credentials'
    end

    nil
  end
end
