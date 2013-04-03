module Mopper
  module Translations

    def import_translations(args)
      raise ArgumentError unless args[:file_path] && args[:locale] && args[:fields]
      data = CSV.read(args[:file_path], { :col_sep => ';', :encoding => 'UTF-8' })
      
      return false unless data.size

      data.each_with_index do |row, i| 
        obj = self.where(:id => row[0]).first
        next unless obj
        args[:fields].each_with_index do |f, n|
          obj.write_attribute(f.to_sym, row[n+1], locale: args[:locale].to_sym)          
        end
        obj.save!
      end
      true
    end

  end
end