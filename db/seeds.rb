# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
master = User.create(email: "sicad.ap@gmail.com",:password=>"@#sicad$%",:password_confirmation=>"@#sicad$%",:tipo=>"MASTER",:name=>"MASTER SICAD", :ativo=>true, :mudar_senha=>false)

cidades = Cidade.create([{nome: 'AMAPÁ', numero_total: 6026}, {nome: 'CALÇOENE', numero_total: 7423}, {nome: 'CUTIAS', numero_total: 4062}, {nome: 'FERREIRA GOMES', numero_total: 7133}, {nome: 'ITAUBAL', numero_total: 5522}, {nome: 'LARANJAL DO JARI', numero_total: 27718}, {nome: 'MACAPÁ', numero_total: 277688}, {nome: 'MAZAGÃO', numero_total: 14146}, {nome: 'OIAPOQUE', numero_total: 18261}, {nome: 'PEDRA BRANCA DO AMAPARI', numero_total: 8316}, {nome: 'PORTO GRANDE', numero_total: 13176}, {nome: 'PRACUÚBA', numero_total: 3351}, {nome: 'SANTANA', numero_total: 73096}, {nome: 'SERRA DO NAVIO', numero_total: 3454}, {nome: 'TARTARUGALZINHO', numero_total: 8514}, {nome: 'VITÓRIA DO JARI', numero_total: 9560}])

macapa = Cidade.find_by_nome("MACAPÁ")

santana = Cidade.find_by_nome("SANTANA")

if macapa
bairros_macapa = Bairro.create([{nome: 'AMAZONAS', cidade_id: macapa.id},{nome: 'ARAXA', cidade_id: macapa.id},{nome: 'AÇAI', cidade_id: macapa.id},{nome: 'BEIROL', cidade_id: macapa.id},{nome: 'BONE AZUL', cidade_id: macapa.id},{nome: 'BRASIL NOVO', cidade_id: macapa.id},{nome: 'BURITIZAL', cidade_id: macapa.id},{nome: 'CABRALZINHO', cidade_id: macapa.id},{nome: 'CENTRAL', cidade_id: macapa.id},{nome: 'CIDADE NOVA', cidade_id: macapa.id},{nome: 'CONGÓS', cidade_id: macapa.id},{nome: 'CUBA DE ASFALTO', cidade_id: macapa.id},{nome: 'HOSPITAL DE BASE', cidade_id: macapa.id},{nome: 'INFRAERO I', cidade_id: macapa.id},{nome: 'INFRAERO II', cidade_id: macapa.id},{nome: 'JARDIM EQUATORIAL', cidade_id: macapa.id},{nome: 'JARDIM FELICIDADE I', cidade_id: macapa.id},{nome: 'JARDIM FELICIDADE II', cidade_id: macapa.id},{nome: 'JARDIM MARCO ZERO', cidade_id: macapa.id},{nome: 'LAURINDO BANHA', cidade_id: macapa.id},{nome: 'MACAPABA', cidade_id: macapa.id},{nome: 'MARABAIXO I', cidade_id: macapa.id},{nome: 'MARABAIXO II', cidade_id: macapa.id},{nome: 'MARABAIXO III', cidade_id: macapa.id},{nome: 'MARABAIXO IV', cidade_id: macapa.id},{nome: 'MORADA DAS PALMEIRAS', cidade_id: macapa.id},{nome: 'MUCA', cidade_id: macapa.id},{nome: 'NOVA ESPERANÇA', cidade_id: macapa.id},{nome: 'NOVO HORIZONTE I', cidade_id: macapa.id},{nome: 'NOVO HORIZONTE II', cidade_id: macapa.id},{nome: 'PACOVAL', cidade_id: macapa.id},{nome: 'PANTANAL', cidade_id: macapa.id},{nome: 'PEDRINHAS', cidade_id: macapa.id},{nome: 'PERPETUO SOCORRO', cidade_id: macapa.id},{nome: 'RENASCER I', cidade_id: macapa.id},{nome: 'RENASCER II', cidade_id: macapa.id},{nome: 'SANTA INES', cidade_id: macapa.id},{nome: 'SANTA RITA', cidade_id: macapa.id},{nome: 'SAO JOSE', cidade_id: macapa.id},{nome: 'SAO LAZARO', cidade_id: macapa.id},{nome: 'UNIVERSIDADE', cidade_id: macapa.id},{nome: 'YPE', cidade_id: macapa.id},{nome: 'ZERÃO', cidade_id: macapa.id}])
end

if santana
bairros_santana = Bairro.create([{nome: 'CENTRAL',cidade_id: santana.id}, {nome: 'COMERCIAL',cidade_id: santana.id}, {nome: 'DANIEL',cidade_id: santana.id}, {nome: 'DISTRITO INDUSTRIAL',cidade_id: santana.id}, {nome: 'ELESBAO',cidade_id: santana.id}, {nome: 'FONTE NOVA',cidade_id: santana.id}, {nome: 'FORTALEZA',cidade_id: santana.id}, {nome: 'HOSPITALIDADE',cidade_id: santana.id}, {nome: 'IGARAPE DO LAGO',cidade_id: santana.id}, {nome: 'ILHA DE SANTANA',cidade_id: santana.id}, {nome: 'NOVA BRASILIA',cidade_id: santana.id}, {nome: 'NOVO HORIZONTE',cidade_id: santana.id}, {nome: 'PARAISO',cidade_id: santana.id}, {nome: 'PROVEDOR I',cidade_id: santana.id}, {nome: 'PROVEDOR II',cidade_id: santana.id}, {nome: 'REMEDIOS',cidade_id: santana.id}, {nome: 'VILA AMAZONAS',cidade_id: santana.id}])
end

entidade_teste = Entidade.create(:nome=>"TESTE",:codigo=>"12345",:data_criacao=>Date.today,:cidade_id=>macapa.id)
usuario_teste_administrador = User.create(:name=>"ADMINISTRADOR TESTE",:tipo=>"ADMINISTRADOR",:password=>"teste123",:password_confirmation=>"teste123",:email=>"teste@sicad.xyz",:entidade=>entidade_teste, :ativo=>true, :mudar_senha=>false)

