class ProcedureSheet < ApplicationRecord
  belongs_to :assigned_mechanic
  belongs_to :intervention
end
