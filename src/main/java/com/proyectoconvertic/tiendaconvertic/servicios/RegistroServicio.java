package com.proyectoconvertic.tiendaconvertic.servicios;


import com.proyectoconvertic.tiendaconvertic.entidades.Registro;
import com.proyectoconvertic.tiendaconvertic.repositorios.RegistroRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

@Service
public class RegistroServicio {

    @Autowired
    private RegistroRepositorio registroRepositorio;


    public Registro save(Registro registro) {

        return registroRepositorio.save(registro);
    }


    public List<Registro> findAll() {

        return registroRepositorio.findAll();
    }

    public Boolean login(String correoelectronico, String contrasenna) throws ExceptionUsuario {
        Registro registro = registroRepositorio.findByCorreoElectronicoAndContrasenna(correoelectronico, contrasenna).orElseThrow(ExceptionUsuario::new);

        return registro != null;
    }

}
