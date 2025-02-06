# ✅ Use a stable Ruby version for  ARM64
FROM ruby:3.1-bullseye 

# Set up a working directory
WORKDIR /srv/jekyll

# Install Jekyll and dependencies
RUN gem install bundler jekyll

# Expose the default Jekyll port
EXPOSE 4000

# Start Jekyll when the container runs
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
