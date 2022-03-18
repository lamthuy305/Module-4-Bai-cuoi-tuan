package com.codegym.service;

import java.util.List;

public interface IGeneralService<T> {
    List<T> findAll();

    T findOne(int id);

    void create(T t);

    void delete(int id);

    void update(int id, T t);
}
