package com.proyectoconvertic.tiendaconvertic.repositorios;

import com.proyectoconvertic.tiendaconvertic.entidades.Producto;
import com.proyectoconvertic.tiendaconvertic.entidades.Seccion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductoRepositorio extends JpaRepository <Producto, Integer> {

    public List<Producto> findBySeccion_SeccionContainingIgnoreCaseAndMarca_MarcaContainingIgnoreCase(String seccion, String marca);

    public List<Producto> findBySeccion_SeccionContainingIgnoreCaseAndColor_ColorContainingIgnoreCase(String seccion, String color);
    public List<Producto> findBySeccion_SeccionContainingIgnoreCaseAndDescripcionContainingIgnoreCase(String seccion, String descripcion);

    public List<Producto> findByMarca_MarcaContainingIgnoreCase(String marca);

    public List<Producto> findByColor_ColorContainingIgnoreCase(String color);


public List<Producto> findByIdSeccion(Integer seccion);

}
