PokeLocales = {}

PokeLocales['en'] = {
    ['starter_prompt'] = 'Welcome to the world of Pok+¬mon! Choose your starter partner:',
    ['starter_already'] = 'You have already chosen your starter Pok+¬mon!',
    ['starter_chosen'] = 'Congratulations! You received %s as your partner Pok+¬mon!',
    ['wild_appeared'] = 'A wild %s (Lv. %d) appeared!',
    ['battle_started'] = 'Engaged in battle with %s!',
    ['battle_won'] = 'You defeated wild %s! Your team gained %d EXP.',
    ['battle_lost'] = 'All your Pok+¬mon fainted! You blacked out and rushed to the Pok+¬Center.',
    ['battle_ran'] = 'Got away safely!',
    ['ball_thrown'] = 'You threw a %s!',
    ['ball_shake_1'] = 'Wobble...',
    ['ball_shake_2'] = 'Wobble... Wobble...',
    ['ball_shake_3'] = 'Wobble... Wobble... Wobble...',
    ['pokemon_caught'] = 'Gotcha! %s was caught!',
    ['pokemon_escaped'] = 'Oh no! The Pok+¬mon broke free!',
    ['party_full_sent_pc'] = 'Your party is full! %s was sent to PC Box %d.',
    ['party_healed'] = 'Your Pok+¬mon have been fully restored to health!',
    ['nurse_joy_greeting'] = 'Welcome to the Pok+¬mon Center! Let me heal your tired Pok+¬mon.',
    ['nurse_joy_farewell'] = 'We hope to see you again! Take care out there.',
    ['companion_sent'] = 'Go! %s, stand by my side!',
    ['companion_recalled'] = '%s, return!',
    ['cant_ride'] = 'This Pok+¬mon cannot be ridden.',
    ['cant_fly'] = 'This Pok+¬mon cannot fly.',
    ['cant_surf'] = 'This Pok+¬mon cannot swim in the water.',
    ['move_learned'] = '%s learned %s!',
    ['pokemon_evolved'] = 'What? %s is evolving! Congratulations, it evolved into %s!',
    ['no_pokeballs'] = 'You do not have any Pok+¬balls in your bag!',
    ['not_enough_money'] = 'You do not have enough money for this purchase.'
}

PokeLocales['es'] = {
    ['starter_prompt'] = '-íBienvenido al mundo de Pok+¬mon! Elige a tu compa+¦ero inicial:',
    ['starter_already'] = '-íYa has elegido a tu Pok+¬mon inicial!',
    ['starter_chosen'] = '-íFelicidades! Has recibido a %s como tu Pok+¬mon inicial.',
    ['wild_appeared'] = '-íUn %s salvaje (Nv. %d) ha aparecido!',
    ['battle_started'] = '-íEntraste en combate con %s!',
    ['battle_won'] = '-íDerrotaste al %s salvaje! Tu equipo obtuvo %d EXP.',
    ['battle_lost'] = '-íTodos tus Pok+¬mon se debilitaron! Te desmayaste y fuiste al Centro Pok+¬mon.',
    ['battle_ran'] = '-íEscapaste sin problemas!',
    ['ball_thrown'] = '-íLanzaste una %s!',
    ['pokemon_caught'] = '-íYa est+í! -í%s atrapado!',
    ['pokemon_escaped'] = '-íOh no! -íEl Pok+¬mon se ha escapado!',
    ['party_full_sent_pc'] = '-íTu equipo est+í lleno! %s fue enviado a la Caja %d del PC.',
    ['party_healed'] = '-íTus Pok+¬mon han recuperado toda su vitalidad!',
    ['nurse_joy_greeting'] = '-íBienvenido al Centro Pok+¬mon! Curar+¬ a tus Pok+¬mon.',
    ['nurse_joy_farewell'] = '-íEsperamos volver a verte!',
    ['companion_sent'] = '-íAdelante %s!',
    ['companion_recalled'] = '-í%s, regresa!'
}

function _L(key, ...)
    local lang = Config.Locale or 'en'
    local table = PokeLocales[lang] or PokeLocales['en']
    local str = table[key] or PokeLocales['en'][key] or key
    if select('#', ...) > 0 then
        return string.format(str, ...)
    end
    return str
end

