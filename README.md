# Mopper

Import translations for table from SCV file using Globalize3

## Installation

Add this line to your application's Gemfile:

    gem 'mopper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mopper

## Usage

Mopper adds `import_translations` class method on any model.

You need to have a csv file in UTF-8 with `;` as columns separator with at least 2 columns: first with object id, second with translated data for the object

Then you need to pass 3 arguments to Mopper's method:

*  locale - locale name for importing translations
*  fileds - array of fields for translation table
*  file_path - path to *.csv file

```ruby

  class ImportMedicSpecialities < ActiveRecord::Migration
    def up
      MedicSpeciality.import_translations locale: :en, fields: [:name], file_path: File.join(File.join(Rails.root, 'db', 'import'), 'import.csv')
    end
  end

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
