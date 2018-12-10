class Note < ApplicationRecord
  belongs_to :user

  def self.search(term)
    if term
      where('content LIKE ?', "%#{term}%").order('created_at DESC')
    else
      order('created_at DESC') 
    end
  end
end
