class Wine < ApplicationRecord
  # Direct associations

  has_many   :my_wines,
             :dependent => :destroy

  has_many   :bucket_list_wines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
