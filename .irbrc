require 'rubygems'

# awesome print
begin
  require "awesome_print"
  AwesomePrint.irb!
rescue LoadError => err
  warn "Couldn't load awesome_print: #{err}"
end

IRB.conf[:PROMPT_MODE] = :SIMPLE

# Hirb in Rails
if ENV['RAILS_ENV']
  require 'rubygems'
  require 'hirb'
  Hirb.enable
end
