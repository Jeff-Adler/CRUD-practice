class Artist < ApplicationRecord
    has_many :artist_instruments, dependent: :destroy
    has_many :instruments, through: :artist_instruments
end
