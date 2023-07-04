package it.generationitaly.events.repository;

import java.util.Date;
import java.util.List;
import it.generationitaly.events.entity.Evento;

public interface EventoRepository extends JpaRepository<Evento, Integer> {

	List<Evento> findByTagId(int id);

	List<Evento> findByNome(String searchTerm);

	List<Evento> findByCitta(String citta);

	List<Evento> findByGratuito(boolean gratuito);

	List<Evento> findByDataBetween(Date date1, Date date2);
	
	List<Evento> findByData(Date date);
	
	List<Evento> findEventi1(int id, String citta);
	
	List<Evento> findByNomeAndCitta(String nome, String citta);
	
	// search by name and city
	
	List<Evento> findByCittaAndGratuito(String citta, boolean gratuito);

	List<Evento> findByCittaDateBetween (String citta, Date date1, Date date2);

}
