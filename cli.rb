require 'thor'
require './run'

class MyCLI < Thor
  desc "copy list", "please"
  def copy(summorner_name,from_list_name,to_list_name)
    $summorner_name = summorner_name
    $from_list_name = from_list_name
    $to_list_name   = to_list_name
    if $summorner_name.nil? and $from_list_name.nil? and $to_list_name.nil?
      print "Use :  ruby .cli.rb summorner_name from_list_name to_list_name"
    else
      run
    end
  end
end

MyCLI.start(ARGV)
