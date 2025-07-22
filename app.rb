# --- DEPENDÊNCIAS ---
require 'sinatra'
require 'json'

# --- CONFIGURAÇÕES BÁSICAS ---
set :public_folder, File.dirname(__FILE__) + '/public'

# --- FUNÇÕES AUXILIARES --- (movido para cima)
def category_name(category_id)
  # Mapeamento de IDs para nomes amigáveis
  {
    'essencial' => 'Orações Essenciais',
    'mariana' => 'Orações Marianas',
    'proteção' => 'Orações de Proteção',
    'penitência' => 'Orações de Penitência',
    'cotidiano' => 'Orações do Cotidiano',
    'espírito_santo' => 'Orações ao Espírito Santo',
    'eucarística' => 'Orações Eucarísticas',
    'divina_misericórdia' => 'Divina Misericórdia'
  }[category_id] || category_id.capitalize
end

# --- CARREGANDO OS DADOS ---
file = File.read('prayers.json')
PRAYERS = JSON.parse(file, symbolize_names: true)

# Agrupando orações por categoria para otimização
CATEGORIES = PRAYERS.group_by { |prayer| prayer[:category] }
CATEGORIES_LIST = CATEGORIES.keys.map { |cat| { id: cat, name: category_name(cat) } }

# --- CONFIGURAÇÕES DE RESPOSTA ---
before do
  content_type :json
end

# --- ROTAS HTML ---
get '/' do
  content_type :html
  send_file File.join(settings.public_folder, 'index.html')
end

# --- ENDPOINTS (ROTAS DA API) ---

# Rota 1: API Info
get '/api' do
  {
    message: 'Bem-vindo à Catholic Prayers API!',
    endpoints: [
      { path: '/api/prayers', description: 'Lista todas as orações' },
      { path: '/api/prayers?search=termo', description: 'Busca orações por termo' },
      { path: '/api/prayers/:id', description: 'Obtém uma oração específica por ID' },
      { path: '/api/categories', description: 'Lista todas as categorias de orações' },
      { path: '/api/categories/:category', description: 'Lista orações de uma categoria específica' },
      { path: '/api/random', description: 'Retorna uma oração aleatória' }
    ],
    version: '2.0'
  }.to_json
end

# Rota 2: Listar orações (com ou sem busca)
get '/api/prayers' do
  query = params['search']

  if query
    search_results = PRAYERS.select do |prayer|
      prayer[:text].downcase.include?(query.downcase) || 
      prayer[:title].downcase.include?(query.downcase)
    end
    search_results.to_json
  else
    PRAYERS.to_json
  end
end

# Rota 3: Obter uma oração específica pelo seu ID
get '/api/prayers/:id' do
  prayer = PRAYERS.find { |p| p[:id] == params['id'] }

  if prayer
    prayer.to_json
  else
    status 404
    { error: 'Oração não encontrada.' }.to_json
  end
end

# Rota 4: Listar categorias
get '/api/categories' do
  CATEGORIES_LIST.to_json
end

# Rota 5: Listar orações por categoria
get '/api/categories/:category' do
  category = params['category']
  
  if CATEGORIES[category]
    CATEGORIES[category].to_json
  else
    status 404
    { error: 'Categoria não encontrada.' }.to_json
  end
end

# Rota 6: Oração aleatória
get '/api/random' do
  PRAYERS.sample.to_json
end

# Compatibilidade com rotas antigas
get '/prayers' do
  redirect '/api/prayers'
end

get '/prayers/:id' do
  redirect "/api/prayers/#{params['id']}"
end