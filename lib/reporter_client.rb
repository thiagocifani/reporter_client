require "reporter_client/version"

module ReporterClient
  autoload :Client, 'reporter_client/client'
  autoload :ConnectionRefusedError, 'reporter_client/errors'
end
