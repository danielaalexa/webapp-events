package it.generationitaly.events.repository;

import java.util.List;
import it.generationitaly.events.entity.Evento;

public interface EventoRepository extends JpaRepository<Evento, Integer> {

	List<Evento> findByCitta(String citta);
}
