require_relative "tic_tac_toe_2/version"
 
module TicTacToe
end
 require_relative "./tic_tac_toe_2/core_extensions.rb"
lib_path = File.expand_path(File.dirname(__FILE__))
Dir[lib_path + "/tic_tac_toe_2/**/*.rb"].each { |file| require file }
