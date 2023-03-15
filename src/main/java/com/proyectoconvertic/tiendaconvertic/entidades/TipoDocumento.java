package com.proyectoconvertic.tiendaconvertic.entidades;

import jakarta.persistence.*;



@Entity
@Table(name="tipo_documento")
public class TipoDocumento {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="id_documento")
    private Integer idDocumento;
    private String documento;

    public Integer getIdDocumento() {
        return idDocumento;
    }

    public void setIdDocumento(Integer idDocumento) {
        this.idDocumento = idDocumento;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }
}
