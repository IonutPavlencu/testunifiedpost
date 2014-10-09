class Form < ActiveRecord::Base
  has_many :countries
  validates_presence_of :firstname ,:message => "First name field can't be blank , please fill it with youre first name"
  validates_presence_of :lastname, :message => "Last name field can't be blank , please fill it with youre last name"
  validates_confirmation_of :email, :message => "The email confirmation field doesn't match the email you'ved filled in"
  validates_presence_of :email,:email_confirmation,:message => "Email field can't be blank, please fill it with youre email adress",:confirmation => true
  validates_uniqueness_of :email,:message => "This email adress has allready subscribed, please enter another email adress"
  validates_presence_of :city,:message => "City field can't be blank, please fill it with youre city"
  validates_presence_of :country_id, :message => "Please select youre country"
  validate :email_regex
  def email_regex
    if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
      errors.add :email, "Incorrect email format, please review the email adress"
    end
  end
end
