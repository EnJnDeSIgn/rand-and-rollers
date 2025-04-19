import pytest
from ss0 import calculate_shapiro_delay
from config import G, c


def test_valid_inputs():
    M = 1.989e30  # Mass of the Sun
    r1 = 1.496e11  # Distance from Sun to Earth
    r2 = 1.496e11
    d = 1.496e11
    delay = calculate_shapiro_delay(G, M, c, r1, r2, d)
    assert delay > 0


def test_invalid_triangle():
    M = 1.0e30
    r1 = 1.0e11
    r2 = 1.0e11
    d = 3.0e11  # Invalid triangle
    delay = calculate_shapiro_delay(G, M, c, r1, r2, d)
    assert delay is None


def test_negative_values():
    M = -1.0e30  # Invalid mass
    r1 = 1.0e11
    r2 = 1.0e11
    d = 1.0e11
    delay = calculate_shapiro_delay(G, M, c, r1, r2, d)
    assert delay is None


def test_zero_values():
    M = 0  # Invalid mass
    r1 = 0
    r2 = 1.0e11
    d = 1.0e11
    delay = calculate_shapiro_delay(G, M, c, r1, r2, d)
    assert delay is None