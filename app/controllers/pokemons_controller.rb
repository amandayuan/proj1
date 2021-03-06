class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10

    if pokemon.health <= 0
      pokemon.destroy
    else
      pokemon.save
    end

    redirect_to trainer_path(pokemon.trainer_id)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.create(name: params[:pokemon][:name], trainer: current_trainer, health: 100, level: 1)

    if pokemon.save
        redirect_to trainer_path(id: current_trainer.id)
    else
        flash[:error] = pokemon.errors.full_messages.to_sentence
        redirect_to new_pokemons_path
    end
  end
end
