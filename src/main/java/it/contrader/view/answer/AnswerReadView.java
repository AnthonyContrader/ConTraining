package it.contrader.view.answer;

import it.contrader.controller.Request;
import it.contrader.dto.AnswersDTO;
import it.contrader.main.MainDispatcher;
import it.contrader.view.AbstractView;

/**
 * 
 * @author Mirco
 *
 *Si osservi che alla View arrivano solo oggetti di tipo DTO!
 */
public class AnswerReadView extends AbstractView 
{
	private int id;
	private Request request;
	private final String mode = "READ";

	public AnswerReadView() {
	}

	/**
	 * Se la request � null (ovvero quando arriva dal controller con mode GETCHOICE e choice L 
	 * il metodo � vuoto.
	 * 
	 * Altrimenti se arriva con uno user nella request (ovvero quando arriva
	 * dal controller con mode READ) mostra lo user. In questo caso torna alla UserView senza eseguire
	 * gli altri due metodi
	 */
	@Override
	public void showResults(Request request) 
	{
		if (request != null) 
		{
			AnswersDTO answer = (AnswersDTO) request.get("Answer");
			System.out.println(answer);
			MainDispatcher.getInstance().callView("Answer", null);
		}
	}

	
	/**
	 * chiede all'utente di inserire l'id dell'utente da leggere
	 */
	@Override
	public void showOptions() 
	{
		System.out.println("Inserisci l'ID dell'utente:");
		id = Integer.parseInt(getInput());
	}

	/**
	 * impacchetta una request con l'id dell'utente da leggere e la manda al controller tramite il Dispatcher
	 */
	@Override
	public void submit() 
	{
		request = new Request();
		request.put("id", id);
		request.put("mode", mode);
		MainDispatcher.getInstance().callAction("Answer", "doControl", request);
	}
}
