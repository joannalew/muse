class Follow < ApplicationRecord
    validates :user_id :job_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
    
    belongs_to :job,
        primary_key: :id,
        foreign_key: :job_id,
        class_name: :Job
end
