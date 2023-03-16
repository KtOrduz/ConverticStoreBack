package com.proyectoconvertic.tiendaconvertic.rest;

import com.proyectoconvertic.tiendaconvertic.entidades.Producto;
import com.proyectoconvertic.tiendaconvertic.servicios.ProductoServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/productos")
public class ProductoREST {
    @Autowired
    ProductoServicio productoServicio;

    @GetMapping("/buscar")
    public ResponseEntity<List<Producto>> buscar() {

        return new ResponseEntity<>(productoServicio.verProductos(), HttpStatus.OK);
    }

    @GetMapping("/all")
    public List<Producto> verProductos(){
        return productoServicio.findAll();
    }

/*    @GetMapping("/{id}")
    public Producto buscarPorId(@PathVariable(name = "id") Integer idProducto) {

        return productoServicio.findById(idProducto).orElse(null);
    }*/

    @GetMapping("/seccion/{idSeccion}")
    public Producto buscarPorIdSeccion(@PathVariable(name = "idSeccion") Integer idProducto) {

        return productoServicio.findById(idProducto).orElse(null);
    }

    @GetMapping("/{seccion}/{atributos}")
    public ResponseEntity<List<Producto>> buscarPorSeccionAndAtributos(@PathVariable(name = "seccion") String seccion, @PathVariable(name = "atributos")String atributo){
        List<Producto> productoList;
        productoList = productoServicio.findBySeccionAndAtributo( seccion, atributo);
        return new ResponseEntity<>(productoList, HttpStatus.OK);
    }

    @GetMapping("/{atributos}")
    public ResponseEntity<List<Producto>> buscarPorAtributos(@PathVariable(name = "atributos")String atributo){
        List<Producto> productoList;
        productoList = productoServicio.findByAtributo(atributo);
        return new ResponseEntity<>(productoList, HttpStatus.OK);
    }
}