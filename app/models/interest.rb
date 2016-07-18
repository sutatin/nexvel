class Interest < ActiveRecord::Base
    validates :score,  numericality: {
            only_integer: true,
            greater_than_or_equal_to: 0,
            less_than_or_equal_to: 10
          }
    belongs_to :user
    belongs_to :company
    has_many :interest_memos
    has_many :evaluation_scores
end
