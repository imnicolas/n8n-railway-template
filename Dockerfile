# Dockerfile
FROM n8nio/n8n

# railway.json
{
  "build": {
    "env": {
      "NODE_ENV": "production"
    }
  },
  "deploy": {
    "startCommand": "n8n"
  }
}

# .env.example
# Copiar este archivo como .env y completar
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=admin123
N8N_HOST=0.0.0.0
N8N_PORT=5678
WEBHOOK_TUNNEL_URL=https://<tu-subdominio>.railway.app
GENERIC_TIMEZONE=America/Argentina/Buenos_Aires
N8N_EDITOR_BASE_URL=https://<tu-subdominio>.railway.app
N8N_PROTOCOL=https
N8N_LOG_LEVEL=info

# (opcional) para persistencia en Railway Postgres:
# DB_TYPE=postgresdb
# DB_POSTGRESDB_HOST=containers-us-west-XX.railway.app
# DB_POSTGRESDB_PORT=5432
# DB_POSTGRESDB_DATABASE=railway
# DB_POSTGRESDB_USER=postgres
# DB_POSTGRESDB_PASSWORD=<clave>