package it.generationitaly.events.repository.impl;

import java.util.List;

import it.generationitaly.events.entity.Evento;
import it.generationitaly.events.repository.EventoRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;

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
			eventi = em.createQuery("select e from Evento e where e.citta=:citta", Evento.class).setParameter("citta", citta).getResultList();		
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
		} finally {
			if (em != null) {
				em.close();
			}
		}
		return eventi;
	}

	
}
