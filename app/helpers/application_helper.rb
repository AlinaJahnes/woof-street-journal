module ApplicationHelper
  def markdown(text)
    new_markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    new_markdown.render(text).html_safe
  end
end
