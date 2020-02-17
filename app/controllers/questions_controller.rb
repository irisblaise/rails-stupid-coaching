# frozen_string_literal: true

class QuestionsController < ApplicationController
  ANSWERS = {
    1 => { answer: 'Great!' },
    2 => { answer: 'Silly question, get dressed and go to work!' },
    3 => { answer: "I don't care, get dressed and go to work!" }
  }.freeze

  def answer
    @question_you = params[:question]
    @answers = ANSWERS
    if @question_you.include?('?')
      @answer = @answers[2][:answer]
    elsif @question_you == 'I am going to work'
      @answer = @answers[1][:answer]
    else
      @answer = @answers[3][:answer]
    end
  end

  def ask
    @question_you
  end
end
