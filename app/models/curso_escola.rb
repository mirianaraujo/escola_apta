class CursoEscola < ActiveRecord::Base
  belongs_to :escola
  belongs_to :curso
  belongs_to :professor
end
