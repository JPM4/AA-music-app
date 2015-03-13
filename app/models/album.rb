# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  style      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#

class Album < ActiveRecord::Base
  validates :name, :band_id, :style, presence: true

  has_many :tracks
  belongs_to :band
end
