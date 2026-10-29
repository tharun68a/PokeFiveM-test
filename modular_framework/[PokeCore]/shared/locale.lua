PokeLocales = {}

PokeLocales['en'] = {
    ['starter_prompt'] = 'Welcome to the world of Pokémon! Choose your starter partner:',
    ['starter_already'] = 'You have already chosen your starter Pokémon!',
    ['starter_chosen'] = 'Congratulations! You received %s as your partner Pokémon!',
    ['wild_appeared'] = 'A wild %s (Lv. %d) appeared!',
    ['battle_started'] = 'Engaged in battle with %s!',
    ['battle_won'] = 'You defeated wild %s! Your team gained %d EXP.',
    ['battle_lost'] = 'All your Pokémon fainted! You blacked out and rushed to the PokéCenter.',
    ['battle_ran'] = 'Got away safely!',
    ['ball_thrown'] = 'You threw a %s!',
    ['ball_shake_1'] = 'Wobble...',
    ['ball_shake_2'] = 'Wobble... Wobble...',
    ['ball_shake_3'] = 'Wobble... Wobble... Wobble...',
    ['pokemon_caught'] = 'Gotcha! %s was caught!',
    ['pokemon_escaped'] = 'Oh no! The Pokémon broke free!',
    ['party_full_sent_pc'] = 'Your party is full! %s was sent to PC Box %d.',
    ['party_healed'] = 'Your Pokémon have been fully restored to health!',
    ['nurse_joy_greeting'] = 'Welcome to the Pokémon Center! Let me heal your tired Pokémon.',
    ['nurse_joy_farewell'] = 'We hope to see you again! Take care out there.',
    ['companion_sent'] = 'Go! %s, stand by my side!',
    ['companion_recalled'] = '%s, return!',
    ['cant_ride'] = 'This Pokémon cannot be ridden.',
    ['cant_fly'] = 'This Pokémon cannot fly.',
    ['cant_surf'] = 'This Pokémon cannot swim in the water.',
    ['move_learned'] = '%s learned %s!',
    ['pokemon_evolved'] = 'What? %s is evolving! Congratulations, it evolved into %s!',
    ['no_pokeballs'] = 'You do not have any Pokéballs in your bag!',
    ['not_enough_money'] = 'You do not have enough money for this purchase.'
}

PokeLocales['es'] = {
    ['starter_prompt'] = '¡Bienvenido al mundo de Pokémon! Elige a tu compañero inicial:',
    ['starter_already'] = '¡Ya has elegido a tu Pokémon inicial!',
    ['starter_chosen'] = '¡Felicidades! Has recibido a %s como tu Pokémon inicial.',
    ['wild_appeared'] = '¡Un %s salvaje (Nv. %d) ha aparecido!',
    ['battle_started'] = '¡Entraste en combate con %s!',
    ['battle_won'] = '¡Derrotaste al %s salvaje! Tu equipo obtuvo %d EXP.',
    ['battle_lost'] = '¡Todos tus Pokémon se debilitaron! Te desmayaste y fuiste al Centro Pokémon.',
    ['battle_ran'] = '¡Escapaste sin problemas!',
    ['ball_thrown'] = '¡Lanzaste una %s!',
    ['pokemon_caught'] = '¡Ya está! ¡%s atrapado!',
    ['pokemon_escaped'] = '¡Oh no! ¡El Pokémon se ha escapado!',
    ['party_full_sent_pc'] = '¡Tu equipo está lleno! %s fue enviado a la Caja %d del PC.',
    ['party_healed'] = '¡Tus Pokémon han recuperado toda su vitalidad!',
    ['nurse_joy_greeting'] = '¡Bienvenido al Centro Pokémon! Curaré a tus Pokémon.',
    ['nurse_joy_farewell'] = '¡Esperamos volver a verte!',
    ['companion_sent'] = '¡Adelante %s!',
    ['companion_recalled'] = '¡%s, regresa!'
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

