class Project < ApplicationRecord
    validates :name, length: {minimum: 3}
    validates :description, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :status, presence: true
    scope :find_status, -> { where("status > ?", params[:status]) }
end
