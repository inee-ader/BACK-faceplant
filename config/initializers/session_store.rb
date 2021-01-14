#put domain address
Rails.application.config.session_store :cookie_store, key: '_back_faceplant', domain: 'http://localhost:3000'