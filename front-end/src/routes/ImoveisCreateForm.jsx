import { useState } from "react";
import { NavLink, useParams } from "react-router-dom";

const ImoveisCreateForm = ({ onClose, onSave }) => {

  const { id } = useParams();

  const [formData, setFormData] = useState({
    codigo: "",
    valor: "",
    logradouro: "",
    bairro: "",
    cidade: "",
    uf: "",
    numero: "",
    tipo: "",
    valorIPTU: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    onSave(formData);
    onClose();
  };

  return (
    <div className="fixed top-0 left-0 w-full h-full flex items-center justify-center bg-white bg-opacity-75">
      <div className="bg-gray p-8 rounded-lg w-full h-full max-w-screen-md">
        <h2 className="text-xl text-white font-bold mb-4">Novo Imóvel</h2>
        <form onSubmit={handleSubmit} className="flex flex-col h-full">
          <div className="flex flex-wrap -mx-2 mb-4">
            <div className="w-1/2 px-2 mb-2">
              <label>
                Código:
                <input
                  type="text"
                  name="codigo"
                  value={formData.codigo}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Valor:
                <input
                  type="text"
                  name="valor"
                  value={formData.valor}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Logradouro:
                <input
                  type="text"
                  name="logradouro"
                  value={formData.logradouro}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Bairro:
                <input
                  type="text"
                  name="bairro"
                  value={formData.bairro}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Cidade:
                <input
                  type="text"
                  name="cidade"
                  value={formData.cidade}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                UF:
                <input
                  type="text"
                  name="uf"
                  value={formData.uf}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Número:
                <input
                  type="text"
                  name="numero"
                  value={formData.numero}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Tipo:
                <input
                  type="text"
                  name="tipo"
                  value={formData.tipo}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>

            <div className="w-1/2 px-2 mb-2">
              <label>
                Valor IPTU:
                <input
                  type="text"
                  name="valorIPTU"
                  value={formData.valorIPTU}
                  onChange={handleChange}
                  className="border rounded p-2 w-full"
                />
              </label>
            </div>
          </div>

          <div className="flex justify-end">
            <NavLink
              to="/imoveis"
              className="mr-2 p-2 border rounded"
            >
              Cancelar
            </NavLink>
            <button
              type="submit"
              className="p-2 bg-blue-500 text-white rounded"
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
