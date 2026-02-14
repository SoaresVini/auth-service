FROM ruby:3.2.4

# Instala dependências do sistema
RUN apt-get update -qq && apt-get install -y \
    nodejs \
    postgresql-client \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Define diretório de trabalho
WORKDIR /app

# Copia Gemfile e instala gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copia o resto da aplicação
COPY . .

# Expõe a porta
EXPOSE 3000

# Comando padrão
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]