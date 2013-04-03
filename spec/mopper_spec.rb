require 'spec_helper'

describe 'mopper' do
  it 'should return version' do
    Mopper::VERSION.should_not be_nil
  end

  it 'should extend any ActiveRecord models with import_translations class method' do
    class MyModel < ActiveRecord::Base
    end

    ->{MyModel.send(:import_translations)}.should_not raise_error NoMethodError
  end

  it 'should raise an error if not all arguments were passed in' do
    class MyModel < ActiveRecord::Base
    end

    ->{MyModel.send(:import_translations, {locale: :en})}.should raise_error ArgumentError
  end

  it 'should return false if csv file is empty' do
    class MyModel < ActiveRecord::Base
    end

    CSV.stub(:read) { [] }

    MyModel.send(:import_translations, {locale: :en, fields: [:name, :description], file_path:'/usr/test.csv'}).should be_true  
  end

end