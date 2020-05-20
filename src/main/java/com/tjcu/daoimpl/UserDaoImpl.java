package com.tjcu.daoimpl;
import com.tjcu.bean.User;
import com.tjcu.dao.UserDao;
import com.tjcu.utils.ResultObject;
import com.tjcu.utils.UpdateQuery;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public int sumCount(int rlevel) {
        String sql = "select count(*) from keepuser where role = ?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getInt(1);
            }
        },rlevel);
        return Integer.valueOf((Integer)objects.get(0));
    }

    @Override
    public List findContent(int rlevel, int offset, int num) {
        String sql = "select * from keepuser where ifdelete = 0 and role = ? limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                User user = new User();
                user.setUid(resultSet.getInt("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUpwd(resultSet.getString("upwd"));
                user.setUsex(resultSet.getInt("usex"));
                user.setPhone(resultSet.getString("phone"));
                user.setEmail(resultSet.getString("email"));
                return user;
            }
        },rlevel,offset,num);
        List<User> result = new ArrayList<>();
        for (int i = 0;i < objects.size();i++) {
            result.add((User)objects.get(i));
        }
        return result;
    }

    @Override
    public List<User> selectByRlevel(int rlevel) {
        String sql = "select * from usertable where ifdelete = 0 and rlevel = ?";
        List<Object> result = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                User user = new User();
                user.setUid(resultSet.getInt("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUpwd(resultSet.getString("upwd"));
                user.setUsex(resultSet.getInt("usex"));
                return user;
            }
        }, rlevel);
        List<User> list = new ArrayList<>();
        for (int i = 0; i < result.size(); i++) {
            list.add((User) result.get(i));
        }
        return list;
    }

    @Override
    public List<User> selectByUname(String uname, int rlevel) {
        String sql = "select * from keepuser where ifdelete =  0 and uname like ? and role = ?";
        List<Object> result = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                User user = new User();
                user.setUid(resultSet.getInt("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUpwd(resultSet.getString("upwd"));
                user.setUsex(resultSet.getInt("usex"));
                user.setEmail(resultSet.getString("email"));
                user.setPhone(resultSet.getString("phone"));
                return user;
            }
        }, "%" + uname + "%", rlevel);
        if(result == null || result.size() == 0){
            return null;
        }
        List<User> list = new ArrayList<>();
        for (int i = 0; i < result.size(); i++) {
            list.add((User) result.get(i));
        }
        return list;
    }

    @Override
    public User selectByName(String uname) {
        String sql = "select * from keepuser where uname like ? and ifdelete = 0";
        List<Object> objectList = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                User user = new User();
                user.setUid(resultSet.getInt("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUpwd(resultSet.getString("upwd"));
                user.setUsex(resultSet.getInt("usex"));
                user.setRole(resultSet.getInt("role"));
                user.setEmail(resultSet.getString("email"));
                user.setPhone(resultSet.getString("phone"));
                return user;
            }
        },"%"+uname+"%");
        if(objectList == null || objectList.size() == 0){
            return null;
        }
        User user = (User)objectList.get(0);
        return user;
    }

    @Override
    public int insertAdmin(User user) {
        String sql = "insert into usertable(uname,upwd,usex,ubirthday,receiver,raddress,rtelephone,rlevel,raids) values(?,?,?,?,?,?,?,?,?)";
        int i = UpdateQuery.update(sql, user.getUname(), user.getUpwd(), user.getUsex());
        return i;
    }

    @Override
    public int deleteAdmin(String uname) {
        String sql = "update keepuser set ifdelete = 1 where uname = ?";
        int i = UpdateQuery.update(sql,uname);
        return i;
    }

    @Override
    public int updateAdmin(User user) {
        String sql = "update keepuser set upwd = ?,usex = ?,phone = ?,email = ? where uname = ?";
        int i = UpdateQuery.update(sql,user.getUpwd(),user.getUsex(),user.getPhone(),user.getEmail(),user.getUname());
        return i;
    }

    @Override
    public int insertUser(User user) {
        String sql = "insert into keepuser(uname,upwd,usex,email,phone,create_time) values(?,?,?,?,?,?)";
        int i = UpdateQuery.update(sql, user.getUname(), user.getUpwd(), user.getUsex(),user.getEmail(),user.getPhone(),user.getCreate_time());
        return i;
    }
}
