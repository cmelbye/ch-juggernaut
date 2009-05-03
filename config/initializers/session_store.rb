# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_collabhub_session',
  :secret      => 'e2535661ae9df75457bcf6996813ce90e4d8a6333b9d360c9145278c353ae1ef0266bf592d2781e83e74de68b638488d6110daf96b050e7e52b9cc5c0d2c1a67'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
