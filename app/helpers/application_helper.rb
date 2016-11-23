module ApplicationHelper

  def nav_link(link_text, link_path, options = {})
    if options[:action]
      class_name = params[:action] == options[:action] ? 'active' : ''
    else
      class_name = ''
    end
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
  
  def markdown(text)
    options = {
      filter_html:     false,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
end
