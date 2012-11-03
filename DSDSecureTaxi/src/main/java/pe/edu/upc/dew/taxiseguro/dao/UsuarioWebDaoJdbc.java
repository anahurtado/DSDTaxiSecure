package pe.edu.upc.dew.taxiseguro.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa;
import pe.edu.upc.dew.taxiseguro.model.UsuarioWeb;
import pe.edu.upc.dew.taxiseguro.util.JdbcUtils;

public class UsuarioWebDaoJdbc implements UsuarioDao {

    public UsuarioWeb getUsuarioPorUsername(String string) {
        Connection conn = JdbcUtils.getConnection();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select USCoUsuario, USNoNombres, USCoClave,USFlEstado from usuarioweb where USCoUsuario='U00001'");

            if (rs.next()) {
                UsuarioWeb usuarioweb = new UsuarioWeb();
                usuarioweb.setUSCoUsuario(rs.getString("USCoUsuario"));
                usuarioweb.setUSCoClave(rs.getString("USCoClave"));
                usuarioweb.setUSNoNombres(rs.getString("USNoNombres"));

                return usuarioweb;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioWebDaoJdbc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public UsuarioWeb login(String usuario, String password) {

        Connection conn = JdbcUtils.getConnection();

        UsuarioWeb usuarioWeb = null;
        Statement st = null;

        ResultSet rs = null;
        try {


            st = conn.createStatement();
            /* Statement st = conn.createStatement();
*/            rs = st.executeQuery("select USCoUsuario,USCoClave, USNoNombres,USNoPaterno,USNoMaterno,USFlEstado from usuarioweb where USCoUsuario='" + usuario + "'  and USCoClave='" + password + "'");

            if (rs.next()) {
                usuarioWeb = new UsuarioWeb();
                usuarioWeb.setUSCoUsuario(rs.getString("USCoUsuario"));
                usuarioWeb.setUSCoClave(rs.getString("USCoClave"));
                usuarioWeb.setUSNoNombres(rs.getString("USNoNombres"));
                usuarioWeb.setUSNoPaterno(rs.getString("USNoPaterno"));
                usuarioWeb.setUSNoMaterno(rs.getString("USNoMaterno"));
                usuarioWeb.setUSFlEstado(rs.getString("USFlEstado"));
                return usuarioWeb;
            }


        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            JdbcUtils.closeResultSet(rs);
            JdbcUtils.closeStatement(st);
            JdbcUtils.closeConnection(conn);
        }

        return usuarioWeb;

    }
}
