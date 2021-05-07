class Estate < ApplicationRecord
  has many :names, dependent: :destroy
  accepts_nested_attributes_for :names, allow_destroy: true, reject_if: all_blank
end
