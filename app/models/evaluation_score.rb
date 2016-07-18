class EvaluationScore < ActiveRecord::Base
    belongs_to :selected_evaluation_item
    belongs_to :interest
end
