defmodule Neko.UserRouter do
  use Plug.Router
  import Plug.Conn

  post "/register" do
    %{
      "username" => username,
      "email" => email,
      "password" => password
    } = conn.body_params

    changeset =
      %Neko.Users.User{}
      |> Neko.Users.User.changeset(
        %{
          username: username,
          email: email,
          password: password
        }
      )

    case Neko.Service.register(changeset) do
      {:ok, user} ->
        conn
        |> put_resp_content_type("application/json")
        |> send_resp(201, Jason.encode!(user))
      {:error, changeset} ->
        conn
        |> put_resp_content_type("application/json")
        |> send_resp(400, Jason.encode!(changeset))
    end
  end
end
