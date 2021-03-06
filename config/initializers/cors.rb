Rails.application.config.middleware.insert_before 0, Rack::Cors do
    # allow do
    #     origins 'peaceful-varahamihira-8367f0.netlify.app'
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    #     credentials: true
    # end
    allow do
        origins 'http://localhost:3001', 'https://peaceful-varahamihira-8367f0.netlify.app', 'https://fierce-coast-77229.herokuapp.com'
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
    #   allow do
    #     origins 'http://localhost:3001'
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    #     credentials: true
    # end
    # allow do # change to firebase domain
    #     origins 'https://mighty-wildwood-93362.herokuapp.com'
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    #     credentials: true
    # end
end

Rails.application.config.hosts = nil
