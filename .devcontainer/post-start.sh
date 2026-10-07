#!/usr/bin/env bash
set -euo pipefail

# Abhängigkeiten aktuell halten, falls sich pyproject.toml/uv.lock geändert haben
# (geht schnell, wenn nichts zu tun ist)
uv sync

# Kurzer Hinweis, falls der gcloud-Login fehlt
if ! gcloud auth application-default print-access-token >/dev/null 2>&1; then
  echo "⚠️  Keine gcloud Application Default Credentials gefunden."
  echo "    Auf dem Mac ausführen: gcloud auth application-default login"
fi
