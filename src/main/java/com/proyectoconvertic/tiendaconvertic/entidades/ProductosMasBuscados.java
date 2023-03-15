package com.proyectoconvertic.tiendaconvertic.entidades;

import jakarta.persistence.*;

@Entity
@Table(name="productos_mas_buscados")
public class ProductosMasBuscados {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_productos_buscados")
    private Integer idProductosBuscados;
    @Column(name = "id_producto")
    private Integer idProducto;
    @Column(name = "cantidad_visitas")
    private int cantidadVisitas;

    @ManyToOne
    @JoinColumn(name = "id_producto", insertable = false, updatable = false)
    private Producto producto;

    public Integer getIdProductosBuscados() {
        return idProductosBuscados;
    }

    public void setIdProductosBuscados(Integer idProductosBuscados) {
        this.idProductosBuscados = idProductosBuscados;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidadVisitas() {
        return cantidadVisitas;
    }

    public void setCantidadVisitas(int cantidadVisitas) {
        this.cantidadVisitas = cantidadVisitas;
    }
}
