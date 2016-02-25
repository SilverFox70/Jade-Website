class Session < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone_number, {presence: true,
														format:
													  {with: /(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]‌​|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})/
													 }}
	validates :date, presence: true
	validates :time, presence: true
	validates :spam_question, inclusion: { in: %w(Wednesday)}
	validates :service_agreement, acceptance: {accept: true}
	validates :cancellation_policy, acceptance: {accept: true}
	validates :location_aware, acceptance: {accept: true}
	validates :email, {presence: true,
                     uniqueness: true,
                     format:
                     {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
                    }}
	validates :email, confirmation: true


end
