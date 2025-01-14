require_relative 'item'

class MusicAlbum < Item
  DEFAULT_BOOL = false

  attr_accessor :publish_date

  def initialize(genre, author, label, publish_date, on_spotify = DEFAULT_BOOL)
    super(genre, author, label, publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end
