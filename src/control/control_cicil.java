/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
import gui.Transaksi;
import static gui.Transaksi.txNofak;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author triadmoko
 */
public class control_cicil extends koneksi{
     public control_cicil(){
        super.setKoneksi();
    }
    public DefaultTableModel model = new DefaultTableModel();
     public DefaultTableModel model2 = new DefaultTableModel();
//    public void tampilPengeluaran(String kodebarang,String namaBarang,int harga,int qty,int total){
//        String[] kolom = {"Kode Barang","Nama Barang","Harga","Qty","Total"};
//        model.setColumnIdentifiers(kolom);
//        if(!(kodebarang.equals(""))){
//            Object[] data = new Object[5];
//            data[0]= kodebarang;
//            data[1]= namaBarang;
//            data[2]= harga;
//            data[3]=qty;
//            data[4]=total;
//            model.addRow(data);
//        }
//    }
    
    public void tampilPengeluaran(String no_cicil,String id_pelanggan, String nama_pelanggan, int total, int Kurang){
        String[] kolom = {"no_cicil","id_pelanggan","nama_pelanggan","Total","Kurang"};
        model.setColumnIdentifiers(kolom);
        if(!(no_cicil.equals(""))){
            Object[] data = new Object[5];
            data[0]= no_cicil;
            data[1]= id_pelanggan;
            data[2]= nama_pelanggan;
            data[3]= total;
            data[4]=Kurang;
            model.addRow(data);
        }
    }
    
    public void transaksiCicilan(String no_cicil, int bayarke, int bayar,String tgl) throws SQLException{
        String sql = "INSERT INTO transaksicicil (no_cicil, pembayaran, bayar, tanggal) VALUES('"+no_cicil+"','"+bayarke+"','"+bayar+"','"+tgl+"')";
        st.executeUpdate(sql);
    }
    
    public void updateCicil(String no_cicil, int bayar, int kurang) throws SQLException{
        String sql = "UPDATE cicil set bayar = '" + bayar + "' , kurang = '" + kurang + "' " +
                "WHERE no_cicil = '" + no_cicil + "' ";
        st.executeUpdate(sql);
    }
    
    public void simpanCicilan(String no_cicil,String kasir,String id_pelanggan,String namaPelanggan,int diskon,int total,int bayar,int kurang,String tgl) throws SQLException{
        String sql = "INSERT INTO cicil VALUES('"+no_cicil+"','"+kasir+"','"+id_pelanggan+"','"+namaPelanggan+"','"+diskon+"','"+total+"','"+bayar+"','"+kurang+"','"+tgl+"')";
        st.executeUpdate(sql);
    }
    public void insertBarang(String nofak,String kodeBarang,String namaBarang,int harga,int qty,int total) throws SQLException{
        String sql = "INSERT INTO barangPenjualan VALUES('"+nofak+"','"+kodeBarang+"','"+namaBarang+"','"+harga+"','"+qty+"','"+total+"')";
        st.executeUpdate(sql);
    }
    public void updateStok(int sisa,String kode_barang) throws SQLException{
      
        String sql = "UPDATE masterBarang set stok = '"+sisa+"' WHERE kode_barang = '"+kode_barang+"'";
        st.executeUpdate(sql);
    }
    
    public void noFak(){
        try {
            String sql = "SELECT * FROM cicil ORDER BY no_cicil DESC";

            rs = st.executeQuery(sql);
            if(rs.next()){
                String nocicil = rs.getString("no_cicil").substring(1);
                String AN = ""+ (Integer.parseInt(nocicil)+1);
                String nol = "";
                
                if(AN.length()==1){
                    nol = "000";
                }else if(AN.length()==2){
                    nol = "00";
                }else if(AN.length()==3){
                    nol = "0";
                }else if(AN.length()==4){
                    nol = "";
                }
                txNofak.setText("F" + nol + AN);
            }else{
                txNofak.setText("F0001");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Transaksi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void tampilansurancicilan(String no_cicil) {
        try {
            String sql = "SELECT * FROM transaksicicil where no_cicil = '" + no_cicil + "' ";

            rs = st.executeQuery(sql);
            String[] kolom = {"no_cicil","pembayaran","bayar","tanggal"};
            model2.setColumnIdentifiers(kolom);
            while(rs.next()){
                if(!(no_cicil.equals(""))){
                    Object[] data = new Object[4];
                    data[0]= no_cicil;
                    data[1]= rs.getString("Pembayaran");
                    data[2]= rs.getString("bayar");
                    data[3]= rs.getString("tanggal");
                    model2.addRow(data);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Transaksi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
