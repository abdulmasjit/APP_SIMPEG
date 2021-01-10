package objection;
public class Golongan {
    private String id_golongan, kode_golongan, keterangan;
    
    public Golongan(String id_golongan, String kode_golongan, String keterangan){
        this.id_golongan = id_golongan;
        this.kode_golongan = kode_golongan;
        this.keterangan = keterangan;
    }

    public String getId_golongan() {
        return id_golongan;
    }

    public void setId_golongan(String id_golongan) {
        this.id_golongan = id_golongan;
    }

    public String getKode_golongan() {
        return kode_golongan;
    }

    public void setKode_golongan(String kode_golongan) {
        this.kode_golongan = kode_golongan;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }
}
