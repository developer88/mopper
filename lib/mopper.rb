require "mopper/version"
require 'globalize3'
require 'csv'
require "mopper/translations"

ActiveRecord::Base.extend Mopper::Translations
