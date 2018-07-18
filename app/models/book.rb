class Book < ActiveRecord::Base
	# validates :title, presence: true, if: :title_is?
	validates :title, length: {minimum: 2}
	validates :description, length: { within: 2...20 }
	# validates :title, length: {minimum: 2}
	# validates :title, length: { maximum: 2 }
	 # validates :title, length: { in: 2..5 }
	  # validates :title, length: { in: 5 }
	#validates :title, length:{is: 5}, message: "%{value} must be five characters."}, on: :create
	  # def title_is?
	  # 	title == 'sri'
	  # end
	# validates :title, length: {minimum: 2}, allow_blank: true
	# validates :title, exclusion: {in: %w(www ca us jp), message: "%{value} is reserved"}
	# validates :title, length: {minimum: 2}, allow_nil: true
	
	#...............<CALLBACKS>.................
	after_validation :check_title?
	before_validation :description_has_value?, on: :create 
	#after_create_commit :log_user_saved_to_db
	# before_save :another_name_field_has_value?
	private
		def check_title?
			self.title = "MMM" if title == "SSS"
		end

		def description_has_value?
			self.description = "hellooooooooooooooo" unless description.present?
		end

		# def self.another_name_field_has_value?
		# 	ano_name = "RRR" if ano_name.blank?
		# end

		# def log_user_saved_to_db
		#     puts 'Book was saved to database'
		# end

end
