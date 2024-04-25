# Use the official Ruby image as the base
FROM ruby:3.1.2

# Set the working directory inside the container
WORKDIR /app

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  postgresql-client

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
