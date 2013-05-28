module Jekyll
  module MyFilters
    def summary(input)
      if input.include?('<!-- summary -->')
        input.split('<!-- summary -->').first
      else
        input
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::MyFilters)
