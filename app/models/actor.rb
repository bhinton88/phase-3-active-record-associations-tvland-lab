class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    character_name = self.characters.first.name
    show_name = self.shows.first.name
    "#{character_name} - #{show_name}"
  end

end