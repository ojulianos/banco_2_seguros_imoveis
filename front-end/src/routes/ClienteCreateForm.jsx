import React, { useState } from "react";

const ClienteCreateForm = ({ onClose, onSave }) => {
  const [novoCliente, setNovoCliente] = useState({
    Endereço: "",
    Cliente: "",
    DataFim: "",
    ValorCobertura: "",
    ValorFranquia: "",
    QtdSinistro: "",
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setNovoCliente((prevCliente) => ({
      ...prevCliente,
      [name]: value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    onSave(novoCliente);
    onClose();
  };

  return (
    
    <div className="fixed top-0 left-0 w-full h-full flex items-center justify-center bg-white bg-opacity-75">
    <div className="bg-gray p-8 rounded-lg w-full h-full max-w-screen-md">
      <h2 className="text-xl text-white font-bold mb-4">Novo Cliente</h2>
      <form onSubmit={handleSubmit} className="flex flex-col h-full">
        <label className=" w-1/2 px-2 mb-4">
            Endereço:
            <input
              type="text"
              name="Endereço"
              value={novoCliente.Endereço}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <label className="w-1/2 px-2  mb-4">
            Cliente:
            <input
              type="text"
              name="Cliente"
              value={novoCliente.Cliente}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <label className=" w-1/2 px-2  mb-4">
            Data Fim:
            <input
              type="text"
              name="DataFim"
              value={novoCliente.DataFim}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <label className=" w-1/2 px-2  mb-4">
            Valor Cobertura:
            <input
              type="text"
              name="ValorCobertura"
              value={novoCliente.ValorCobertura}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <label className="w-1/2  px-2  mb-4">
            Valor Franquia:
            <input
              type="text"
              name="ValorFranquia"
              value={novoCliente.ValorFranquia}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <label className="w-1/2  px-2  mb-4">
            Qtd Sinistro:
            <input
              type="text"
              name="QtdSinistro"
              value={novoCliente.QtdSinistro}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <div className="flex justify-end">
            <button
              type="button"
              onClick={onClose}
              className="mr-2 p-2 border rounded"
            >
              Cancelar
            </button>
            <button type="submit" className="p-2 bg-green-500 text-white rounded">
              Salvar
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default ClienteCreateForm;
