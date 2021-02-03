class SignupMailer < ApplicationMailer
	def confirm_email(user)
		@user = user
		@confirmation_link = root_url

		mail({
			to: user.email,
			bcc: ['sign ups <signups@colcho.net>'],
			subject: I18n.t('signup_mailer.confirm_email.subject')
		})
	
	end
end
