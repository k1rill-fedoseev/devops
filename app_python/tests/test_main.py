import time
import re

import pytest

from app.main import create_app

@pytest.fixture
def client():
    app = create_app()

    with app.test_client() as client:
        yield client


def test_main_page(client):
    r1 = client.get('/')
    time.sleep(1)
    r2 = client.get('/')

    assert b'Europe/Moscow' in r1.data
    assert b'Europe/Moscow' in r2.data
    t1 = re.search(r'\d\d:\d\d:\d\d', str(r1.data)).group(0)
    t2 = re.search(r'\d\d:\d\d:\d\d', str(r2.data)).group(0)
    assert t1 is not None
    assert t2 is not None
    assert t1 != t2
