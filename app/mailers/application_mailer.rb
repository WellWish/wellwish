# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base # :nodoc:
  default from: "notifications@wellwish.org"
  layout "mailer"
end
