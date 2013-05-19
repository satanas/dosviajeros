module Summary
  def summary(input)
    if input.include?('<!-- summary -->')
      input.split('<!-- summary -->').first
    else
      input
    end
  end
end

Liquid::Template.register_filter(Summary)
