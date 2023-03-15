package com.proyectoconvertic.tiendaconvertic.entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "ventas")
public class Ventas {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_venta")
    private Integer idVenta;
    @Column(name = "id_producto")
    private Integer idProducto;

    private int cantidad;

    @Column(name = "valor_total")
    private double valor_total;

    @Column(name = "id_envio")
    private Integer idEnvio;


    @Column(name = "id_registro")
    private Integer idRegistro;

    @ManyToOne
    @JoinColumn(name = "id_registro", insertable = false, updatable = false)
    private Registro registro;

    @ManyToOne
    @JoinColumn(name = "id_envio", insertable = false, updatable = false)
    private DatosEnvio datosEnvio;

    @ManyToOne
    @JoinColumn(name = "id_producto", insertable = false, updatable = false)
    private Producto producto;

    public Integer getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(Integer idVenta) {
        this.idVenta = idVenta;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getValor_total() {
        return valor_total;
    }

    public void setValor_total(double valor_total) {
        this.valor_total = valor_total;
    }

    public Integer getIdEnvio() {
        return idEnvio;
    }

    public void setIdEnvio(Integer idEnvio) {
        this.idEnvio = idEnvio;
    }

    public Integer getIdRegistro() {
        return idRegistro;
    }

    public void setIdRegistro(Integer idRegistro) {
        this.idRegistro = idRegistro;
    }
}
