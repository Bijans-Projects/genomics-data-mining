# config.py
import os
from pathlib import Path

def project_root() -> Path:
    return Path.cwd()

ROOT = project_root()

DEFAULT_DATASET_DOWNLOAD_FOLDER = Path(os.getenv("DATASET_DOWNLOAD_DIR", str(ROOT / "data" / "external" / "packaged")))
DEFAULT_DATASET_EXTRACT_FOLDER = Path(os.getenv("DATASET_EXTRACT_DIR", str(ROOT / "data" / "external" / "extracted")))
DATAHUB_BASE = "https://datahub.assets.cbioportal.org"