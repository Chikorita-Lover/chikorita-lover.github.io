module RooseyDataProcessor
  class Generator < Jekyll::Generator
    def generate(site)
      for project in site.data["projects"]
        max_size = 2 # How many suggested projects a single project can have
        date = Date.parse(project[1]["releaseDate"])
        suggested = Array.new()
        tag_scores = Array.new()
        date_diffs = Array.new()

        for other_project in site.data["projects"]
          if project == other_project
            next
          end

          other_date = Date.parse(other_project[1]["releaseDate"])
          date_diff = (date - other_date).to_i.abs
          
          tag_score = 0
          for tag in project[1]["tags"]
            if other_project[1]["tags"].include?(tag)
              tag_score += 1
            end
          end

          for index in 0..(max_size - 1)
            if index >= suggested.length
              suggested.push(other_project)
              tag_scores.push(tag_score)
              date_diffs.push(date_diff)
              break
            elsif tag_score > tag_scores[index] || (tag_score == tag_scores[index] && date_diff < date_diffs[index])
              suggested.insert(index, other_project)
              tag_scores.insert(index, tag_score)
              date_diffs.insert(index, date_diff)
              break
            end
          end

          if suggested.length > max_size
            suggested.pop
            tag_scores.pop
            date_diffs.pop
          end
        end

        project[1]["suggested"] = suggested.map {|a| a[0]}
      end
    end
  end
end