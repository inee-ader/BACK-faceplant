Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'https://peaceful-varahamihira-8367f0.netlify.app'
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
    # allow do #domain that this is pushing up to like heroku
    #     origins 'http://localhost:3000'
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    #     credentials: true
    # end
end