require 'squib'
require 'yaml'
require 'game_icons'

Version=1
Copywright = "version: v#{Version}"

def yaml2dataframe(yamldata)
  resultCards = Squib::DataFrame.new

  # Get keys :
  card_keys = yamldata[0].keys
  card_keys.each do |k|
    resultCards[k] = yamldata.map { |e| e[k]}
  end
  return resultCards
end

def cutmark(top, left, right, bottom, size)
  line x1: left, y1: top, x2: left+size, y2: top, stroke_width: 1, cap: :round, stroke_color: 'white'
  line x1: left, y1: top, x2: left, y2: top+size, stroke_width: 1, cap: :round, stroke_color: 'white'

  line x1: right, y1: top, x2: right, y2: top+size, stroke_width: 1, cap: :round, stroke_color: 'white'
  line x1: right, y1: top, x2: right-size, y2: top, stroke_width: 1, cap: :round, stroke_color: 'white'

  line x1: left, y1: bottom, x2: left+size, y2: bottom, stroke_width: 1, cap: :round, stroke_color: 'white'
  line x1: left, y1: bottom, x2: left, y2: bottom-size, stroke_width: 1, cap: :round, stroke_color: 'white'
end

def save_home_made(file)
  cutmark 40, 40, 785, 1085, 10
  save format: :pdf, file: file, width: "29.7cm", height: "21cm", trim: 40, gap: 0
end

def debug_grid()
  grid width: 25,  height: 25,  stroke_color: '#659ae9', stroke_width: 1.5
  grid width: 100, height: 100, stroke_color: '#659ae9', stroke_width: 4
end

def set_background()
    background color: 'black'
end

def make_cards(description, output_file)
  Squib::Deck.new(cards: Cards.size, layout: 'layout-cards.yml') do
    background color: 'white'
    #rect layout: 'cut' # cut line as defined by TheGameCrafter
    rect layout: 'safe', stroke_color: Cards2.cardcolor # safe zone as defined by TheGameCrafter
    rect layout: 'HeaderFlatBottom', fill_color: Cards2.cardcolor
    rect layout: 'HeaderRound', fill_color: Cards2.cardcolor
    png file: Cards2.image, layout: 'image', width: 300

    text str: Cards2.title, layout: 'LTitle', color: Cards.map { |e| e["textcolor"]}
    #text str: Cards2.title, layout: 'LTitle', color: "black"
    text str: Cards2.theme, layout: 'Theme'
    text str: Cards2.character, layout: 'TextOnImage'
    
    text str: description, layout: 'Description', markup: true

    text str: "Crypto Clash:", layout: 'cryptoclash_score1', color: 'black'
    text str: Cards2.cryptoclash_score, layout: 'cryptoclash_score2', color: 'black'
    text str: "Crypto World:", layout: 'cryptoworld_score1', color: 'black'
    text str: Cards2.cryptoworld_score, layout: 'cryptoworld_score2', color: 'black'
    #png file: Cards2.theme_image, layout: 'level_image'
    text str: Cards2.level, layout: 'level', color: 'black'

    save_home_made output_file
  end
end

filename = ARGV[0]
Cards = YAML.load_file('../data/' + filename + '.yml')
Cards2 = yaml2dataframe(Cards)

make_cards(Cards2.description, filename + ".pdf")
