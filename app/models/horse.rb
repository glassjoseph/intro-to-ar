class Horse < ActiveRecord::Base
  belongs_to :jockey
  belongs_to :breed

  def self.total_winnings
    self.all.sum(:total_winnings)
  end
end
