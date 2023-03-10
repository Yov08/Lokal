module ApplicationHelper
  def tag_class(tag)
    "tag-#{tag.name.downcase.parameterize}"
  end
end
