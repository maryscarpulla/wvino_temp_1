class Wine < ApplicationRecord
  # Direct associations

  has_many   :bucket_list_wines,
             :class_name => "MyWine",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
