package com.proyectoconvertic.tiendaconvertic.entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "secciones")
public class Seccion {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "id_seccion")
     private Integer idSeccion;

     private String seccion;

     public Integer getIdSeccion() {
          return idSeccion;
     }

     public void setIdSeccion(Integer idSeccion) {
          this.idSeccion = idSeccion;
     }

     public String getSeccion() {
          return seccion;
     }

     public void setSeccion(String seccion) {
          this.seccion = seccion;
     }
}
