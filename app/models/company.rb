class Company < ApplicationRecord
    validates :name, :logo, presence: true

    has_many :jobs,
        primary_key: :id,
        foreign_key: :company_id,
        class_name: :Job
end
