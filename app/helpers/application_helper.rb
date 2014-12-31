module ApplicationHelper
  def display_organizer_name_with_email_link(organizer)
    mail_to organizer.username, (organizer.name.present? ? organizer.name : organizer.username)
  end
end
