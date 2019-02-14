class Job < ApplicationRecord
    validates :title, :description, :location, :url, presence: true

    belongs_to :company,
        primary_key: :id,
        foreign_key: :company_id,
        class_name: :Company

end
