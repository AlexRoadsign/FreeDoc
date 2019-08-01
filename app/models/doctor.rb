class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :doctor_specialities
  has_many :specialities, through: :doctor_specialities
end
