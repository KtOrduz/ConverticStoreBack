package com.proyectoconvertic.tiendaconvertic.servicios;

import com.proyectoconvertic.tiendaconvertic.entidades.Producto;
import com.proyectoconvertic.tiendaconvertic.repositorios.ProductoRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductoServicio {
@Autowired
    ProductoRepositorio productoRepositorio;

public List<Producto> findAll (){
    return productoRepositorio.findAll();
}

    public List<Producto> verProductos (){
        return productoRepositorio.findAll();
    }

    public Optional<Producto> findById(Integer idProducto){
        return productoRepositorio.findById(idProducto);
    }

    public List<Producto> findBySeccion(Integer idSeccion){
        return productoRepositorio.findByIdSeccion(idSeccion);
    }


    public List<Producto> findBySeccionAndAtributo(String seccion, String atributo) {

        List<Producto> productoList;
        List<Producto> productoListA = productoRepositorio.findBySeccion_SeccionContainingIgnoreCaseAndColor_ColorContainingIgnoreCase(seccion, atributo);
        List<Producto> productoListB = productoRepositorio.findBySeccion_SeccionContainingIgnoreCaseAndDescripcionContainingIgnoreCase(seccion, atributo);
        List<Producto> productoListC = productoRepositorio.findBySeccion_SeccionContainingIgnoreCaseAndMarca_MarcaContainingIgnoreCase(seccion, atributo);

        if(!productoListA.isEmpty()){
            productoList = productoListA;
        } else if (!productoListB.isEmpty()) {
            productoList = productoListB;
        } else{
            productoList = productoListC;
        }
        return productoList;

    }

    public List<Producto> findByAtributo(String atributo) {

        List<Producto> productoList;
        List<Producto> productoListD = productoRepositorio.findByColor_ColorContainingIgnoreCase( atributo);

        List<Producto> productoListF = productoRepositorio.findByMarca_MarcaContainingIgnoreCase( atributo);

        if(!productoListD.isEmpty()){
            productoList = productoListD;

        } else{
            productoList = productoListF;
        }
        return productoList;

    }


}
