import sys
from pathlib import Path

sys.path.insert(
    0,
    str(Path(__file__).resolve().parents[1] / "src"),
)

from app import app


def test_home_endpoint():
    client = app.test_client()
    response = client.get("/")

    assert response.status_code == 200
    assert response.json["application"] == "aws-production-platform"
    assert response.json["status"] == "healthy"


def test_health_endpoint():
    response = app.test_client().get("/health")

    assert response.status_code == 200
    assert response.json["status"] == "healthy"


def test_readiness_endpoint():
    response = app.test_client().get("/ready")

    assert response.status_code == 200
    assert response.json["status"] == "ready"
