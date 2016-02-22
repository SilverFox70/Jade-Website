class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.boolean :leave_message
      t.text :message_explanation
      t.string :email
      t.string :email_confirm
      t.integer :age
      t.text :how_found
      t.date :date
      t.time :time
      t.text :why_session
      t.string :reference_name
      t.string :reference_email
      t.string :reference_phone
      t.string :reference_link
      t.text :reference_identifier
      t.string :social_link_1
      t.string :social_link_2
      t.boolean :service_agreement
      t.boolean :cancellation_policy
      t.string :spam_question
      t.boolean :location_aware

      t.timestamps null: false
    end
  end
end
