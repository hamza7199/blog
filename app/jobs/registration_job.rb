class RegistrationJob < ApplicationJob
  queue_as :default

  def perform(message)
    RegistrationMailer.submission(message).deliver
  end
end
