class DeckRender < Redcarpet::Render::HTML
  def header(text, level)
    out = ''
    if level == 1 || level == 2
      out << "</section>\n<section class=\"slide\">\n"
    end

    if text =~ /^:.+/
      out << "<h#{level} class=\"slide\">#{text[1..-1]}</h#{level}>\n"
    else
      out << "<h#{level}>#{text}</h#{level}>\n"
    end
    out
  end

  def list_item item, type
    if item =~ /^:.+/
      "<li class=\"slide\">#{item[1..-1]}</li>\n"
    else
      "<li>#{item}</li>\n"
    end
  end

  def block_code value, type
    if value =~ /^:.+/
      "<pre class=\"slide\">#{value[1..-1]}</pre>"
    else
      "<pre>#{value}</pre>"
    end
  end

# 类库会自动添加 p 标签，因此不使用这个特性
#   def block_quote value
#     if value =~ /^:.+/
#       "<blockquote class=\"slide\">#{value[1..-1]}</blockquote>"
#     else
#       "<blockquote>#{value}</blockquote>"
#     end
#   end

end
