require 'pry'
require 'rack'
require_relative 'app'
require_relative 'simple_middleware'
require_relative 'simple_middleware_second'

# Rackインターフェースに準じるcallメソッドを持ったオブジェクトを渡す
use SimpleMiddleware
use SimpleMiddlewareSecond
run App.new
