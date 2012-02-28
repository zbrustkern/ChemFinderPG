class Chemical < ActiveRecord::Base
  has_and_belongs_to_many :fgroups
  
  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :casnum, :uniqueness => true
  
  def self.search(search)
     if search
       find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
     else
      find(:all)
     end
   end
   
end