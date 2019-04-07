#!/usr/bin/env ruby

require 'thor'
require_relative '../lib/thor_commands'

Skeletoruby::ThorCommands.start(ARGV)
