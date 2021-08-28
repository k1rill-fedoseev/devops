'''Flask app unit-tests'''

# pylint: disable=redefined-outer-name

import time
import re

import pytest

from app.main import create_app

@pytest.fixture
def client():
    '''Client creation fixture'''
    app = create_app()

    with app.test_client() as client:
        yield client


def test_main_page(client):
    '''Main page unit-test'''
    r_1 = client.get('/')
    time.sleep(1)
    r_2 = client.get('/')

    assert b'Europe/Moscow' in r_1.data
    assert b'Europe/Moscow' in r_2.data
    t_1 = re.search(r'\d\d:\d\d:\d\d', str(r_1.data)).group(0)
    t_2 = re.search(r'\d\d:\d\d:\d\d', str(r_2.data)).group(0)
    assert t_1 is not None
    assert t_2 is not None
    assert t_1 != t_2
