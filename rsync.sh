SOURCE="/path/to/somewhere/" # slash means exclude "whatever" itself, but get everything underneath
DESTINATION="username@computer.local:/path/to/somewhere"
rsync -e 'ssh -p3022'\
  --archive \
  --compress \
  --progress \
  --partial \
  --ignore-existing \
  --human-readable \
  "$SOURCE" \
  "$DESTINATION" \
