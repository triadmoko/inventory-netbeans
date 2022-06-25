/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author N
 */
public class masterCicil extends koneksi {
    public masterCicil(){
        super.setKoneksi();
    }
     public DefaultTableModel modelCicil = new  DefaultTableModel();
     
     public void tampil(){
        try {
//            String sql = "SELECT * FROM masterbarang WHERE nama_barang LIKE '%" + nama + "%'";
            String sqli= "SELECT no_cicil, id_pelanggan, nama_pelanggan, total, sum(total-bayar) as Kurang " +
                    "FROM cicil GROUP By no_cicil";
            String[] kolom = {"no_cicil","id_pelanggan","nama_pelanggan","Total","Kurang"};
            modelCicil.setColumnIdentifiers(kolom);
            rs = st.executeQuery(sqli);
            while(rs.next()){
            Object[] data = new Object[5];
            data[0] = rs.getString("no_cicil");
            data[1] = rs.getString("id_pelanggan");
            data[2] = rs.getString("nama_pelanggan");
            data[3] = rs.getString("total");
            data[4] = rs.getString("Kurang");
            modelCicil.addRow(data);
            
            
        }
        } catch (SQLException ex) {
            Logger.getLogger(masterBarang.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
