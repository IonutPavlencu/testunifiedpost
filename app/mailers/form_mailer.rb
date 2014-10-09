class FormMailer < ActionMailer::Base
    default from: "test@goodnet.ro"
  def admin(form)
    @form = form
    mail to: "ionut.pavlencu@gmail.com" , subject: "New subscriber"
  end
  def subscriber(form)
    @form = form
    mail to: "#{@form.email}" , subject: "Wellcome #{@form.firstname} #{@form.lastname}"
  end    
end  