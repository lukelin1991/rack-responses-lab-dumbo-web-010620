class Application
    def call(env)
        resp = Rack::Response.new
        the_time = Time.now

        resp.write "#{the_time}\n\n"
        ## Time.now gives time in a 24 hr span.
        
        if the_time.hour >= 12 && the_time.hour < 18
            resp.write "Good Afternoon!"
        elsif the_time.hour >= 18
            resp.write "Good Evening!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end