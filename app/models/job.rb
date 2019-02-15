class Job < ApplicationRecord
    validates :title, :description, :location, :url, presence: true

    belongs_to :company,
        primary_key: :id,
        foreign_key: :company_id,
        class_name: :Company

    has_many :follows,
        primary_key: :id,
        foreign_key: :job_id,
        class_name: :Follow

    has_many :following_users,
        through: :follows,
        source: :user
end
