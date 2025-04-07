defmodule Neko.UserRouter do
  use Plug.Router

  post "/register" do
    %{
      "username" => username,
      "email" => email,
      "password" => password
    } = conn.body_params

    changeset =
      %Neko.Users.User{}
      |> Ecto.Changeset.cast(
        %{
          username: username,
          email: email,
          password: password
        },
        [:username, :email, :password]
      )

    case Neko.Service.registerUser(changeset) do
      {:ok, user} ->
        conn
        |> put_resp_content_type("application/json")
        |> send_resp(201, Jason.encode!(user))
    end
  end
end
