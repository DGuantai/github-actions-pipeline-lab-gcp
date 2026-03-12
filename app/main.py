from fastapi import FastAPI

app = FastAPI(title="github-actions-pipeline-lab-gcp")


@app.get("/")
def read_root() -> dict[str, str]:
    return {"message": "GitHub Actions Pipeline Lab GCP"}


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}