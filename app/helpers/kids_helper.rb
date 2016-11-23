module KidsHelper
  def prev_kid(kid)
    if @kid.prev
      link_to 'zurück', page_kid_path(@kid.prev)
    else
      'zurück'
    end
  end
  def next_kid(kid)
    if @kid.next
      link_to 'weiter', page_kid_path(@kid.next)
    else
      'weiter'
    end
  end
end
