json.array!(@sessions) do |session|
  json.extract! session, :id, :first_name, :last_name, :phone_number, :leave_message, :message_explanation, :email, :email_confirm, :age, :how_found, :date, :time, :why_session, :reference_name, :reference_email, :reference_phone, :reference_link, :reference_identifier, :social_link_1, :social_link_2, :service_agreement, :cancellation_policy, :spam_question, :location_aware
  json.url session_url(session, format: :json)
end
