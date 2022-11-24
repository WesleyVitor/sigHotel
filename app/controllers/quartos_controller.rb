class QuartosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quarto, only: [:show, :edit,:destroy]
  before_action :authorization, only:[:new,:create,:edit,:update, :destroy]
  rescue_from Pundit::NotAuthorizedError, with: :unauthorized_user
  def index
    @quartos = Quarto.where(status: :pronto).order(created_at: :desc)
  end

  def new
    @quarto = Quarto.new
  end

  def create
    @quarto = Quarto.new(params_quarto)
    if @quarto.save
      redirect_to quartos_path, notice: "Quarto cadastrado com sucesso!"
    else
      render :new, :unprocessable_entity
    end
  end


  def edit
  end
  def update
    @quarto = Quarto.find(params[:id])
    if @quarto.update(params_quarto)
      redirect_to quarto_path(@quarto), notice: "Quarto atualizado com sucesso!"
    else
      render :edit, :unprocessable_entity
    end
  end


  def show
  end

  def destroy
    @quarto.manutencao!
    redirect_to quartos_path
  end

  private
  def set_quarto
    @quarto = Quarto.find_by_id(params[:id])
  end
  def params_quarto
    params.require(:quarto).permit(:numero_quarto,:max_hospedes,:descricao,:status,:tipo_cama,:tipo_caracteristica)
  end

  def authorization
    authorize Quarto, :can_use_quarto?
  end

  def unauthorized_user
    redirect_to quartos_path, notice: "Usuário não autorizado!"
  end
end
