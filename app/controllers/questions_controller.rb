# frozen_string_literal: true

# This class handles CRUD operations for managing questions.
class QuestionsController < ApplicationController
  def about; end

  def ask; end

  def answer
    question = params[:answer]
    if question.end_with?('?')
      @answer = 'Stupid question, get back to work'
    elsif question.include?('I am going to work right now')
      @answer = 'Good, piss off to work'
    else
      @answer = 'I don\'t care, get dressed and go to work'
    end
  end
end
