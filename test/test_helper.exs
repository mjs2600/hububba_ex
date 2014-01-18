Dynamo.under_test(Hububba.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Hububba.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
