import { useState } from "react";
import { NavLink, useParams } from "react-router-dom";

const ImoveisCreateForm = () => {
  const { id } = useParams();
  const [errorMessage, setErrorMessage] = useState("");

  const [novaApolice, setNovoCliente] = useState({
    apo_cod: "",
    apo_im_cod: "",
    apo_cli_cod: "",
    apo_dt_inicio_vigencia: "",
    apo_dt_fim_vigencia: "",
    apo_valor_cobertura: "",
    apo_valor_franquia: "",
  });

  if (id !== undefined || id !== null) {
    const getApiData = async () => {
      const response = await fetch(
        `https://banco2segurosimoveis-production.up.railway.app/apolices/${id}`,
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
    if (novaApolice.Endereço !== "" && novaApolice.Cliente !== "") {
      if (id !== undefined || id !== null) {
        const options = {
          method: "POST",
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
          body: new URLSearchParams(novaApolice),
        };

        fetch(
          "https://banco2segurosimoveis-production.up.railway.app/apolices",
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
          body: new URLSearchParams(novaApolice),
        };

        fetch(
          `https://banco2segurosimoveis-production.up.railway.app/apolices/${id}`,
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
      <div className="bg-gray p-8 rounded-lg w-full h-full max-w-screen-md">
        <br />
        <br />
        <br />
        <h2 className="text-xl text-black font-bold mb-4">Nova Apolice</h2>
        {!!errorMessage && (
          <div className="mt-1 font-semibold text-red-500">{errorMessage}</div>
        )}

        <form onSubmit={addItem} className="flex flex-col h-full">
          <label className="w-1/2 px-2 mb-4">
            apo_im_cod:
            <input
              type="number"
              name="apo_im_cod"
              value={novaApolice.apo_im_cod}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            apo_cli_cod:
            <input
              type="number"
              name="apo_cli_cod"
              value={novaApolice.apo_cli_cod}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            apo_dt_inicio_vigencia:
            <input
              type="date"
              name="apo_dt_inicio_vigencia"
              value={novaApolice.apo_dt_inicio_vigencia}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            apo_dt_fim_vigencia:
            <input
              type="date"
              name="apo_dt_fim_vigencia"
              value={novaApolice.apo_dt_fim_vigencia}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            apo_valor_cobertura:
            <input
              type="number"
              name="apo_valor_cobertura"
              value={novaApolice.apo_valor_cobertura}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>
          <label className="w-1/2 px-2 mb-4">
            apo_valor_franquia:
            <input
              type="number"
              name="apo_valor_franquia"
              value={novaApolice.apo_valor_franquia}
              onChange={handleInputChange}
              className="border rounded p-2 w-full"
            />
          </label>

          <div className="flex justify-end">
            <NavLink to="/imoveis" className="mr-2 p-2 border rounded">
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

export default ImoveisCreateForm;
