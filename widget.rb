module Foo
  module Bar
    class Widget
      include Inject[:log, :config]

      def initialize(d)
        @log = d[:log]
        @config = d[:config]
      end

      def hello
        log.info 'Widget#hello'
        log.info "Baz -> [ #{config[:baz]} ]"
      end
    end
  end
end
