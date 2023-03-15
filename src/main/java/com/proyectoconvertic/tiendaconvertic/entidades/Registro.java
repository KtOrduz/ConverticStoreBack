package com.proyectoconvertic.tiendaconvertic.entidades;

import jakarta.persistence.*;

@Entity
@Table(name="registro")
public class Registro {
   @Id
   @GeneratedValue(strategy= GenerationType.IDENTITY)
   @Column(name="id_registro")
   private Integer IdRegistro;

   @Column(name="n_documento")
   private String nDocumento;

   private String nombres;
   private String apellidos;
   @Column(name="correo_electronico")
   private String correoElectronico;
   private String contrasenna;

   @Column(name="id_documento")
   private Integer idDocumento;

   @ManyToOne
   @JoinColumn(name = "id_documento", insertable = false, updatable = false)
   private TipoDocumento tipoDocumento;

   public Integer getIdRegistro() {
      return IdRegistro;
   }

   public void setIdRegistro(Integer idRegistro) {
      IdRegistro = idRegistro;
   }

   public String getnDocumento() {
      return nDocumento;
   }

   public void setnDocumento(String nDocumento) {
      this.nDocumento = nDocumento;
   }

   public String getNombres() {
      return nombres;
   }

   public void setNombres(String nombres) {
      this.nombres = nombres;
   }

   public String getApellidos() {
      return apellidos;
   }

   public void setApellidos(String apellidos) {
      this.apellidos = apellidos;
   }

   public String getCorreoElectronico() {
      return correoElectronico;
   }

   public void setCorreoElectronico(String correoElectronico) {
      this.correoElectronico = correoElectronico;
   }

   public String getContrasenna() {
      return contrasenna;
   }

   public void setContrasenna(String contrasenna) {
      this.contrasenna = contrasenna;
   }

   public Integer getIdDocumento() {
      return idDocumento;
   }

   public void setIdDocumento(Integer idDocumento) {
      this.idDocumento = idDocumento;
   }

   public TipoDocumento getTipoDocumento() {
      return tipoDocumento;
   }

   public void setTipoDocumento(TipoDocumento tipoDocumento) {
      this.tipoDocumento = tipoDocumento;
   }
}


