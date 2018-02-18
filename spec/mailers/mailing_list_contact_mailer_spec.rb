# frozen_string_literal: true

require "rails_helper"

RSpec.describe MailingListContactMailer, type: :mailer do
  describe "confirmation_email" do
    let(:mailing_list_contact) { build(:mailing_list_contact) }

    let(:mail) do
      MailingListContactMailer.confirmation_email(mailing_list_contact)
    end

    it "renders the headers" do
      expect(mail.to).to eq([mailing_list_contact.email])
      expect(mail.from).to eq(["notifications@wellwish.org"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
