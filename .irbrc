IRB.conf[:PROMPT_MODE] = :SIMPLE

if ENV['RAILS_ENV']
  require 'rubygems'
  require 'hirb'
  Hirb.enable
end
