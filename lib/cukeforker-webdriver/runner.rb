module CukeForker
  module WebDriver
    class Runner
      def self.run(features, options)
        max = options.fetch(:max, 2)
        options[:notify] = CukeForker::WebDriver::ParallelPortManager.new(max)

        if CukeForker::Runner.run(features, options)
          puts "Output exit 0"
          exit 0
        else
          puts "Output exit 1"
          exit 1
        end
      end
    end
  end
end
