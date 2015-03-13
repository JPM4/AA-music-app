# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string
#  album_id   :integer          not null
#  lyrics     :text
#  style      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
  validates :album_id, :style, :name, presence: true

  belongs_to :album
end
