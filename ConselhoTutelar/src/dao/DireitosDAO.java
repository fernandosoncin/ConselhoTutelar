
package dao;

import MODEL.DireitosM;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DireitosDAO {
    
            static public void salvar (DireitosM direitos) throws SQLException{
        PreparedStatement pst;
        String sql;
        sql = "insert into Direitos values (?,?,?)";
        pst = Conexao.getInstance().prepareStatement(sql);
        pst.setInt(1,0);
        pst.setString(2, direitos.getNumero());
        pst.setString(3, direitos.getDescrição());   
        pst.execute();
        pst.close();
    }
            
            static public void excluir(DireitosM direitos) throws SQLException{
        PreparedStatement pst;
        String sql;
        sql = "delete from Direitos where ID = ?";
        pst = Conexao.getInstance().prepareStatement(sql);
        pst.setInt(1, direitos.getId());
        pst.execute();
        pst.close();
    }
        
            static public void alterar(DireitosM direitos) throws SQLException{
        PreparedStatement pst;
        String sql;
        sql = "update Direitos set "
                 + "Numero = ?, "
                 + "Descrição = ?, "
                      
                 + "where ID = ?";
        pst = Conexao.getInstance().prepareStatement(sql);
        pst.setString(1, direitos.getNumero());
        pst.setString(2, direitos.getDescrição());  
        pst.setInt(3, direitos.getId());
         pst.execute();
         pst.close();
     }
            
    
}