class Teacher < ApplicationRecord

  default_scope { order('created_at DESC') }
  
end
