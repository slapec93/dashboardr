class RemotePQDatabase < ActiveRecord::Base
    self.abstract_class = true
    establish_connection REMOTE_PQ_DATABASE
end
