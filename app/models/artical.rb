class Artical < ApplicationRecord
  def self.all_cached
    Rails.cache.fetch('Artical.all') { all.to_a }
  end
end
