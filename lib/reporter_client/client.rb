require 'net/http'
require 'base64'
require 'json'

module ReporterClient
  class Client
    def initialize(options)
      @endpoint = options.fetch(:endpoint)
    end

    def add(options)
      response = execute_request(:add, options)

      JSON.parse(response.body)
    rescue Errno::ECONNREFUSED
      raise ConnectionRefusedError
    end

    def append(options)
      response = execute_request(:append, options)

      JSON.parse(response.body)
    rescue Errno::ECONNREFUSED
      raise ConnectionRefusedError
    end

    def generate(options)
      response = execute_request(:generate, options)

      result   = JSON.parse(response.body)
      Base64.decode64(result['content'])
    end

    private

    def execute_request(action, options)
      uri = URI.parse(@endpoint)
      Net::HTTP.start(uri.host, uri.port) do |http|
        request = Net::HTTP::Post.new(uri_for(action))
        request.body = options.to_json
        http.request(request)
      end
    end

    def uri_for(action)
      "#{@endpoint}/#{action}"
    end
  end
end
