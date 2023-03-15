package com.proyectoconvertic.tiendaconvertic.entidades;

import jakarta.persistence.*;

@Entity
@Table(name="tallas")
public class Talla {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_talla")
    private Integer idTalla;

    private String talla;

    public Integer getIdTalla() {
        return idTalla;
    }

    public void setIdTalla(Integer idTalla) {
        this.idTalla = idTalla;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }
}

