# frozen_string_literal: true

class MailingListContactMailer < ApplicationMailer
  def confirmation_email(mailing_list_contact)
    @name = mailing_list_contact.name
    email = mailing_list_contact.email

    # to: field in format '"name" <email>' shows nicely in email clients
    email_with_name = "\"#{@name}\" <#{email}>"

    mail(to: email_with_name,
         subject: "You're on the WellWish mailing list")
  end
end
