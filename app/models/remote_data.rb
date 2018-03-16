class RemoteData < RemotePQDatabase
    def self. get_def_table_names
        puts RemotePQDatabase.connection.execute("SELECT DISTINCT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS").inspect
    end
end