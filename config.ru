require 'pry'
require 'rack'
require_relative 'app'

# Rackインターフェースに準じるcallメソッドを持ったオブジェクトを渡す
run App.new
