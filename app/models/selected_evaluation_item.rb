class SelectedEvaluationItem < ActiveRecord::Base
    belongs_to :evaluation_item
    belongs_to :use
    has_many :evaluation_scores
end
