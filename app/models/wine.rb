class Wine < ApplicationRecord
  # Direct associations

  has_many   :bucket_list_wines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
