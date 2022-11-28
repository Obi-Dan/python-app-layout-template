from unittest.mock import patch, call, MagicMock

from src import runner


@patch('builtins.print')
def test_hello_world(mock_print: MagicMock) -> None:
    runner.main()

    assert mock_print.mock_calls == [
        call("Hello World!")
    ]
