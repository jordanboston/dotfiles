require 'rubygems'
require 'irb/completion'

# Pry
begin
  require "pry"
rescue LoadError => err
  warn "Couldn't bind pry on load #{err}"
end

IRB.conf[:PROMPT][:SIMPLE] = {
    :PROMPT_I => ">> ",
    :PROMPT_S => '--"',
    :PROMPT_C => '--+',
    :RETURN => "  ==> %s\n\n"
}

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Hirb in Rails
# if ENV['RAILS_ENV']
#   require 'rubygems'
#   require 'hirb'
#   Hirb.enable
# end

binding.pry
