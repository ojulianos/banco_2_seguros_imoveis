import { useState } from "react";
import { NavLink, useParams } from "react-router-dom";

const ClienteCreateForm = () => {
  const { id } = useParams();
  const [errorMessage, setErrorMessage] = useState("");

  const [novoCliente, setNovoCliente] = useState({
    cli_nome: "",
    cli_documento: "",
    cli_documento2: "",
    cli_logradouro: "",
    cli_bairro: "",
    cli_cidade: "",
    cli_uf: "",
    cli_numero: "",
    cli_telefone: "",
    cli_telefone2: "",
    cli_pai: "",
    cli_mae: "",
    cli_rendimento: "",
  });

  if (id !== undefined || id !== null) {
    const getApiData = async () => {
      const response = await fetch(
        `https://banco2segurosimoveis-production.up.railway.app/clientes/${id}`,
        { method: "GET" }
      )
        .then((response) => response.json())
        .then((response) => {
          setNovoCliente(response.data);
          console.log(response.data);
        })
        .catch((err) => console.error(err));
    };
  }

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setNovoCliente((prevCliente) => ({
      ...prevCliente,
      [name]: value,
    }));
  };

  function addItem(event) {
    event.preventDefault();

    const form = event.currentTarget;
    if (novoCliente.Endereço !== "" && novoCliente.Cliente !== "") {
      if (id !== undefined || id !== null) {
        const options = {
          method: "POST",
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
          body: new URLSearchParams(novoCliente),
        };

        fetch(
          "https://banco2segurosimoveis-production.up.railway.app/clientes",
          options
        )
          .then((response) => response.json())
          .then((response) => {
            alert("Cliente cadastrado com sucesso!");
            console.log(response);
          })
          .catch((err) => console.error(err));
      } else {
        const options = {
          method: "PUT",
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
          body: new URLSearchParams(novoCliente),
        };

        fetch(
          `https://banco2segurosimoveis-production.up.railway.app/clientes/${id}`,
          options
        )
          .then((response) => response.json())
          .then((response) => {
            alert("Cliente atualizado com sucesso!");
            console.log(response);
          })
          .catch((err) => console.error(err));
      }

      form.reset();
      setErrorMessage("");
    } else {
      setErrorMessage("Preencha todos os campos!");
    }
  }

  return (
    <div className="fixed top-0 left-0 w-full h-full flex items-center justify-center bg-white bg-opacity-75 overflow-auto">
      <div className="bg-gray p-8 rounded-lg w-full h-full max-w-screen-md" >
        <br /><br /><br />
        <h2 className="text-xl text-black font-bold mb-4">Novo Cliente</h2>
        {!!errorMessage && (
          <div className="mt-1 font-semibold text-red-500">{errorMessage}</div>
        )}

        <form onSubmit={addItem} className="flex flex-col h-full">
          <label className="w-1/2 px-2 mb-4">
            cli_nome:
            <input
              type="text"
              name="cli_nome"
              value={novoCliente.cli_nome}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_documento:
            <input
              type="text"
              name="cli_documento"
              value={novoCliente.cli_documento}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_documento2:
            <input
              type="text"
              name="cli_documento2"
              value={novoCliente.cli_documento2}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_logradouro:
            <input
              type="text"
              name="cli_logradouro"
              value={novoCliente.cli_logradouro}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_bairro:
            <input
              type="text"
              name="cli_bairro"
              value={novoCliente.cli_bairro}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_cidade:
            <input
              type="text"
              name="cli_cidade"
              value={novoCliente.cli_cidade}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_uf:
            <input
              type="text"
              name="cli_uf"
              value={novoCliente.cli_uf}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_numero:
            <input
              type="text"
              name="cli_numero"
              value={novoCliente.cli_numero}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_telefone:
            <input
              type="text"
              name="cli_telefone"
              value={novoCliente.cli_telefone}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_telefone2:
            <input
              type="text"
              name="cli_telefone2"
              value={novoCliente.cli_telefone2}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_pai:
            <input
              type="text"
              name="cli_pai"
              value={novoCliente.cli_pai}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_mae:
            <input
              type="text"
              name="cli_mae"
              value={novoCliente.cli_mae}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            cli_rendimento:
            <input
              type="text"
              name="cli_rendimento"
              value={novoCliente.cli_rendimento}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <div className="flex justify-end">
            <NavLink to="/clientes" className="mr-2 p-2 border rounded">
              Cancelar
            </NavLink>

            <button
              type="submit"
              className="p-2 bg-green-500 text-white rounded"
            >
              Salvar
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default ClienteCreateForm;
