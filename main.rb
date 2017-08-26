require 'dry-auto_inject'
require 'dry-container'
require 'logging'
require 'pry'

config = {
  baz: 'myval'
}
log = Logging.logger(STDOUT)

container = Dry::Container.new
container.register(:log, log)
container.register(:config, config)
Inject = Dry::AutoInject(container)

require './widget'

Widget = Foo::Bar::Widget
Widget.new().hello
