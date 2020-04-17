package com.tjcu.utils;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface ResultObject {
    Object getByResultSet(ResultSet resultSet) throws SQLException;
}
