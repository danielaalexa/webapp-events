package it.generationitaly.events.repository.impl;

import java.util.ArrayList;
import java.util.Date;
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
					.createQuery("select e from Evento e join fetch e.tagEvento where e.tagEvento.id = :id", Evento.class)
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
	public List<Evento> findByNome(String searchterm) {
		List<Evento> eventi = new ArrayList<Evento>();
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Evento> query = em.createQuery("SELECT e FROM Evento e where e.nome = :nome", Evento.class);
			query.setParameter("nome",searchterm);
			eventi = query.getResultList();
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
	public List<Evento> findByGratuito(Boolean gratuito) {
		EntityManager em = null;
		List<Evento> eventi = null;
		try {
			em = emf.createEntityManager();
			eventi = em.createQuery("SELECT e FROM Evento e WHERE e.gratuito = :gratuito", Evento.class)
					.setParameter("gratuito", gratuito).getResultList();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
		} finally {
			if (em != null)
				em.close();
		}
		return eventi;
	}

	@Override
	public List<Evento> findByDataBetween(Date date1, Date date2) {
		EntityManager em = null;
		List<Evento> eventi = null;
		try {
			em = emf.createEntityManager();
			eventi = em.createQuery("SELECT e FROM Evento e WHERE e.data between (:date1 and :date2) ", Evento.class)
					.setParameter("date1", date1).setParameter("date2", date2).getResultList();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
		} finally {
			if (em != null)
				em.close();
		}
		return eventi;

	}

	@Override
	public List<Evento> findByData(Date date) {
		EntityManager em = null;
		List<Evento> eventi = null;
		try {
			em = emf.createEntityManager();
			eventi = em.createQuery("SELECT e FROM Evento e WHERE e.data=:date", Evento.class)
					.setParameter("date", date).getResultList();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
		} finally {
			if (em != null)
				em.close();
		}
		return eventi;
	}
}
