class BookDecorator < Draper::Decorator
  delegate_all
  DESCRIPTION_IN_RANGE = 0..100

  def authors_all
    authors.map(&:name).join(', ')
  end

  def short_description
    description[DESCRIPTION_IN_RANGE]
  end

end
