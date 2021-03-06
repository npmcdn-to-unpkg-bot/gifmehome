class Animal < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessor :character, :attitude, :home

  %w(name lead character attitude home).each do |a|
    validates a, presence: true
  end

  after_validation do
    self.description ||= {}
    %w(character attitude home).each do |s|
      description[s] = send "#{s}"
    end
  end

  after_initialize do
    self.description ||= {}
    %w(character attitude home).each do |s|
      send "#{s}=", description[s]
    end
  end

end
