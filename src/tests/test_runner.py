from unittest.mock import patch, call

from src import runner


@patch('builtins.print')
def test_hello_world(mock_print) -> None:
    runner.main()

    assert mock_print.mock_calls == [
        call("Hello World!")
    ]
