# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/mailing_list_contact_mailer
class MailingListContactMailerPreview < ActionMailer::Preview
  def confirmation_email
    MailingListContactMailer.confirmation_email(MailingListContact.first)
  end
end
