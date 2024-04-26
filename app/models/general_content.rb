class GeneralContent < ApplicationRecord
    
    SETUP = "Setup".freeze
    NEEDASSESSMENT = "NeedAssessment".freeze
    DONATIONMANAGEMENT = "DonationManagement".freeze
    ALLOCATIONMANAGEMENT = "AllocationManagement".freeze
    GROUP = [SETUP, NEEDASSESSMENT, DONATIONMANAGEMENT, ALLOCATIONMANAGEMENT].freeze

    validates :title, :description, presence: true
    validates :categories, inclusion: {in: GROUP}, presence: true

end
