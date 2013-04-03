module Mopper
  module Translations

    def import_translations(args)
      raise ArgumentError unless args[:file_path] && args[:locale] && args[:fields]
      data = CSV.read(args[:file_path], { :col_sep => ';', :encoding => 'UTF-8' })
      
      return false unless data.size

      data.each_with_index do |row, i| 
        obj = self.arel_table.where(:id => row[0]).first
        unless obj
          puts ". #{model.to_s} ##{row[0]} - object NOT FOUND!!!"
          next 
        end
        fields.each_with_index do |f, n|
          obj.write_attribute(f.to_sym, row[n+1], locale: locale)          
        end
        puts ". #{model.to_s} ##{obj.id} - translation created"
        obj.save!
      end
      true
    end

  end
end