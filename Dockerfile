FROM ruby:3.1.2

WORKDIR /usr/src/app

COPY Gemfile ./

RUN rm -f Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0"]