source "https://rubygems.org"
gemspec

group :development, :test do

  gem 'appraisal', github: 'jwaldrip/appraisal'

  platforms :jruby do
    gem 'activerecord-jdbcsqlite3-adapter'
  end
 
  platforms :ruby do
    gem 'sqlite3'
  end
end
