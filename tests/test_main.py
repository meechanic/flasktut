import pytest


def test_index(client):
    response = client.get("/")
    assert b"Hello" in response.data
