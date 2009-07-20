# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SRA_session',
  :secret      => '9bb1fd0a85df324b7ccfc04f04b509005d03220aec48b7159581cdab3bc047d0b8620a21fc6ee71564d97532df3aed537b211d9236853bbbf013d5a186e6bfbe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
