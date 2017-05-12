class BucketListWine < ApplicationRecord
  # Direct associations

  belongs_to :wine

  belongs_to :user

  # Indirect associations

  # Validations

end
