FROM ruby:2.5.1
WORKDIR /app
ADD Gemfile /app
ADD app.rb /app
RUN bundle install && bundle clean
EXPOSE 4567
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
