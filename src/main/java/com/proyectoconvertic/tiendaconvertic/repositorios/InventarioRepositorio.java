package com.proyectoconvertic.tiendaconvertic.repositorios;

import com.proyectoconvertic.tiendaconvertic.entidades.Inventario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InventarioRepositorio extends JpaRepository<Inventario,Integer> {
}
