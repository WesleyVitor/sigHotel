class EnderecosController < ApplicationController
  def new
    @hospede = Hospede.find(params[:hospede_id])
  end

  def create
    #@endereco = Endereco.new(valid_endereco)
    @hospede = Hospede.find(params[:hospede_id])
    @endereco = @hospede.build_endereco(valid_endereco)
    if @endereco.save
      redirect_to hospedes_path, notice: "Hóspede cadastrado com sucesso!"
    
    else
      render :new, :unprocessable_entity

    end

  end


  private
  def valid_endereco
    params.require(:endereco).permit(:rua, :numero, :complemento, :bairro, :cidade, :estado, :pais, :cep)
  end
end
