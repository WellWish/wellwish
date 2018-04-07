# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/mailing_list_contact_mailer
class MailingListContactMailerPreview < ActionMailer::Preview
  def confirmation_email
    @mailing_list_contact = MailingListContact.create(
      name: "Sheldon",
      email: "sheldon@wellwish.org"
    )

    MailingListContactMailer.confirmation_email(@mailing_list_contact)
  end
end
