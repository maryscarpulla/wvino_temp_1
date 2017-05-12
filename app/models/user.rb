class User < ApplicationRecord
  # Direct associations

  has_many   :my_wines,
             :dependent => :destroy

  has_many   :bucket_list_wines,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
