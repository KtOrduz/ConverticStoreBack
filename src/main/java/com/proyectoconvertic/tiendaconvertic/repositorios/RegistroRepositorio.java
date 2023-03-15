package com.proyectoconvertic.tiendaconvertic.repositorios;
import com.proyectoconvertic.tiendaconvertic.entidades.Registro;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RegistroRepositorio extends JpaRepository<Registro, Integer> {

    public Optional<Registro> findByCorreoElectronicoAndContrasenna(String correoElectronico, String contrasenna);
}
