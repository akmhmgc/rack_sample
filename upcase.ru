# Rackミドルウェア
class UpcaseAll
  def initialize(app)
    @app = app
  end

  def call(env)
    status_code, headers, body = @app.call(env)
    body.each(&:upcase!)
    [status_code, headers, body]
  end
end
use UpcaseAll

App = lambda do |_env|
  [200, { 'Content-Type' => 'text/html' }, ['hello rack world!!']]
end
run App
