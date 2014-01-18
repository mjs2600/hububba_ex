defmodule Hububba.Sup do
  use Supervisor.Behaviour

  def start_link do
    :supervisor.start_link(Hububba.Sup, [])
  end

  def init([]) do
    tree = [ worker(Repo, []) ]
    supervise(tree, strategy: :one_for_all)
  end
end
