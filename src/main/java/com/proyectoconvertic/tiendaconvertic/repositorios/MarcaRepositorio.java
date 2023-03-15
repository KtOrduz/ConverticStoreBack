package com.proyectoconvertic.tiendaconvertic.repositorios;

import com.proyectoconvertic.tiendaconvertic.entidades.Marca;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MarcaRepositorio extends JpaRepository <Marca, Integer> {
}
