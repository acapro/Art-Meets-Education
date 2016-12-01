module ExhibitsHelper
  def exhibit_sub_link(link_text, link_exhibit, current_exhibit)
    class_name = link_exhibit == current_exhibit ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, page_exhibit_path(link_exhibit)
    end
  end
end
