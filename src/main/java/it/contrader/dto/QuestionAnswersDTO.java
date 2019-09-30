package it.contrader.dto;

import it.contrader.model.Questions;
import it.contrader.model.QuestionAnswers.AnswerType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionAnswersDTO {
	
	private Long id;
	private String text;
	private AnswerType rightAnswer;
	
	
	private QuestionsDTO question;


}
