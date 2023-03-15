package com.proyectoconvertic.tiendaconvertic.servicios;


import com.proyectoconvertic.tiendaconvertic.entidades.TipoDocumento;
import com.proyectoconvertic.tiendaconvertic.repositorios.TipoDocumentoRepositorio;
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
public class TipoDocumentoServicio implements TipoDocumentoRepositorio {

    @Autowired
    private TipoDocumentoRepositorio tipoDocumentoRepositorio;


    @Override
    public void flush() {

    }

    @Override
    public <S extends TipoDocumento> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<TipoDocumento> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Integer> integers) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public TipoDocumento getOne(Integer integer) {
        return null;
    }

    @Override
    public TipoDocumento getById(Integer integer) {
        return null;
    }

    @Override
    public TipoDocumento getReferenceById(Integer integer) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends TipoDocumento> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends TipoDocumento> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends TipoDocumento, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> S save(S entity) {
        return null;
    }

    @Override
    public <S extends TipoDocumento> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<TipoDocumento> findById(Integer integer) {
        return Optional.empty();
    }

    @Override
    public boolean existsById(Integer integer) {
        return false;
    }

    @Override
    public List<TipoDocumento> findAll() {
        return null;
    }

    @Override
    public List<TipoDocumento> findAllById(Iterable<Integer> integers) {
        return null;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public void deleteById(Integer integer) {

    }

    @Override
    public void delete(TipoDocumento entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Integer> integers) {

    }

    @Override
    public void deleteAll(Iterable<? extends TipoDocumento> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public List<TipoDocumento> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<TipoDocumento> findAll(Pageable pageable) {
        return null;
    }
}
