package it.generationitaly.events.repository.impl;

import java.util.ArrayList;

import java.util.List;

import it.generationitaly.events.entity.Evento;
import it.generationitaly.events.repository.EventoRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class EventoRepositoryImpl extends JpaRepositoryImpl<Evento, Integer> implements EventoRepository {

	@Override
	public List<Evento> findByCitta(String citta) {
		List<Evento> eventi = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			eventi = em.createQuery("select e from Evento e where e.citta=:citta", Evento.class)
					.setParameter("citta", citta).getResultList();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
		} finally {
			if (em != null) {
				em.close();
			}
		}
		return eventi;
	}

	public List<Evento> findByTagId(int id) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Evento> eventi = new ArrayList<Evento>();
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			eventi = em
					.createQuery("select e from Evento e join fetch p.tagEvento where p.tagEvento = :id", Evento.class)
					.setParameter("id", id).getResultList();
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			System.err.println(e.getMessage());
		} finally {
			if (em != null) {
				em.close();
			}
		}
		return eventi;

	}

	@Override
	public Evento findByNome(String nome) {
		Evento evento = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Evento> query = em.createQuery("SELECT e FROM Evento u where e.nome = :nome",
					Evento.class);
			query.setParameter("evento", evento);
			evento = query.getSingleResult();
			tx.commit();
		} catch (PersistenceException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			System.err.println(e.getMessage());
		} finally {
			if (em != null) {
				em.close();
			}
		}
		return evento;
	}
}
