# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  title      :string
#  desc       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ApplicationRecord
    belongs_to :user

    def complete?
        !completed_at.blank?
    end
end
