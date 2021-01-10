package objection;
public class Pegawai {
    private String id_pegawai, nip, nama, no_telp, alamat, id_golongan, jenkel, tahun_masuk;
    private int gaji;
    
    public Pegawai(String id_pegawai, String nip, String nama, String no_telp, String alamat, String id_golongan, String jenkel, String tahun_masuk, int gaji){
        this.id_pegawai = id_pegawai;
        this.nip = nip;
        this.nama = nama;
        this.no_telp = no_telp;
        this.alamat = alamat;
        this.id_golongan = id_golongan;
        this.jenkel = jenkel;
        this.tahun_masuk = tahun_masuk;
        this.gaji = gaji;
    }
    
    public Pegawai(){
        
    }

    public String getId_pegawai() {
        return id_pegawai;
    }

    public void setId_pegawai(String id_pegawai) {
        this.id_pegawai = id_pegawai;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNo_telp() {
        return no_telp;
    }

    public void setNo_telp(String no_telp) {
        this.no_telp = no_telp;
    }

    public String getAlamat() {
        return alamat;
    }
    
    public int getGaji() {
        return gaji;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getId_golongan() {
        return id_golongan;
    }

    public void setId_golongan(String id_golongan) {
        this.id_golongan = id_golongan;
    }

    public String getJenkel() {
        return jenkel;
    }

    public void setJenkel(String jenkel) {
        this.jenkel = jenkel;
    }

    public String getTahun_masuk() {
        return tahun_masuk;
    }

    public void setTahun_masuk(String tahun_masuk) {
        this.tahun_masuk = tahun_masuk;
    }
    
    public void setGaji(int gaji) {
        this.gaji = gaji;
    }
}
