class RemotePSQLData < RemotePQDatabase
    def initialize(connection_config={})
        config.each do |key, value|
            REMOTE_PQ_DATABASE[key] = value
        end
    end

    # Retrieves the names of the tables in the database
    def self.psql_table_names
        return_value = []
        begin
            query = "select distinct table_name from information_schema.tables where table_schema='public'"
            result_set = RemotePQDatabase.connection.execute(query)
            result_set.each do |row|
                return_value << row.first.last
            end
        rescue Exception => e
            raise "An error occured: #{e.to_s}"
        end
        return_value
    end
end