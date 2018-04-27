class RemotePQDatabase < ActiveRecord::Base
    self.abstract_class = true
    # Establish the connection to the Postgres database
    establish_connection REMOTE_PQ_DATABASE
end
