module ApplicationHelper

  # Same as pluralize helper but with the number formatted using
  # a delimiter.
  def pluralize_with_delimiter(count, singular, plural = nil)
    word = if (count == 1 || count =~ /^1(\.0+)?$/)
      singular
    else
      plural || singular.pluralize
    end

    "#{number_with_delimiter(count) || 0}&nbsp;#{word}".html_safe
  end

  def percentage_with_varying_accuracy(decimal)

    percentage = decimal * 100

    decimal_places = percentage < 0.01 ? 5 : 2

    number_to_percentage(percentage, precision: decimal_places, strip_insignificant_zeros: true)
  end

  def human_superfield_name(superfield)
    lookup = {"gfs_subject" => "Subjects",
     "gfs_item_type" => "Types of thing",
     "gfs_pubyear" => "Dates"}

    lookup[superfield]
  end

end
