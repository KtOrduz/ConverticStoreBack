package com.proyectoconvertic.tiendaconvertic.rest;

import com.proyectoconvertic.tiendaconvertic.servicios.ExceptionUsuario;
import com.proyectoconvertic.tiendaconvertic.servicios.RegistroServicio;
import com.proyectoconvertic.tiendaconvertic.entidades.Registro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/registro")
@CrossOrigin(origins = {"http://localhost:4200/"})
public class RegistroREST {

    @Autowired
    private RegistroServicio registroServicio;

    @GetMapping("/lista")
    public ResponseEntity<List<Registro>> traerLista() {
        return new ResponseEntity<>(registroServicio.findAll(), HttpStatus.OK);
    }

    @PostMapping("/guardar")
    public Registro guardarRegistro(@RequestBody Registro registro) {
        return registroServicio.save(registro);
    }

    @PostMapping("/login")
    public ResponseEntity<Boolean> login(@RequestBody Registro reqistro) {
        try {
            Boolean logeado = registroServicio.login(reqistro.getCorreoElectronico(), reqistro.getContrasenna());

            return new ResponseEntity<>(logeado, HttpStatus.OK);
        } catch (ExceptionUsuario exu) {

            return new ResponseEntity<>(false, HttpStatus.OK);

        }
    }
}
