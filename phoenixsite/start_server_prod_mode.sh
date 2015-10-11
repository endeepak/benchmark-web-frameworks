set -ex

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
brunch build --production
MIX_ENV=prod mix phoenix.digest

# Custom tasks (like DB migrations)
MIX_ENV=prod mix ecto.create
MIX_ENV=prod mix ecto.migrate

echo "Access the server at http://localhost:8001"

# Finally run the server
PORT=8001 MIX_ENV=prod mix phoenix.server