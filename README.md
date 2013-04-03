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

  class ImportPersonTranslates < ActiveRecord::Migration
    def up
      Person.import_translations locale: :en, fields: [:name], file_path: File.join(Rails.root, 'db', 'import', 'import.csv')
    end
  end

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Licence

This code is [MIT][mit] licenced:

Copyright (c) 2013 Eremin Andrey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[mit]: http://www.opensource.org/licenses/mit-license.php
[murmur]: http://en.wikipedia.org/wiki/MurmurHash
[research]: https://panopticlick.eff.org/browser-uniqueness.pdf
