defmodule Neko.Data.DeleteChan do
  alias Neko.{Chans.Chan, Repo}

  def deleteChan(chan_id) do
    case Repo.get(Chan, chan_id) do
      nil ->
        {:error, "User not Found"}

      chan -> Repo.delete(chan)
    end
  end
end
