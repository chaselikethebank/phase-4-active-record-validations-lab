class Post < ApplicationRecord
    
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    # validates :category, inclusion: { in: %w(Fiction or Non-Fiction) }
    validate :believe
   
    def believe 
        if title.downcase === "fiction" | "non-fiction"
            errors.add(:title, "You Won't Believe These True Facts")
        end
    end
    # validates :title, exclusion: { in: %w() }
    # validates :title, inclusion: { in: %w(True Facts) }



end
