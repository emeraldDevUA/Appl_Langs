# frozen_string_literal: true
require './ip_checker.rb'

checker = IpChecker.new

puts checker.is_ip_address "255.0.0.134"
