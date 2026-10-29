const { createApp, ref, computed, onMounted } = Vue;

createApp({
    setup() {
        // State
        const hudLead = ref(null);
        const notifications = ref([]);
        const showStarter = ref(false);
        const starters = ref([]);
        const selectedStarter = ref(null);

        // Battle
        const inBattle = ref(false);
        const battleData = ref(null);
        const battleSubmenu = ref('main');
        const battleLogText = ref('What will you do?');

        // Party
        const showParty = ref(false);
        const partyList = ref([]);
        const selectedPartyPoke = ref(null);

        // PC Box
        const showPC = ref(false);
        const currentBox = ref(1);
        const maxBoxes = ref(30);
        const boxPokemon = ref([]);
        const selectedPCPoke = ref(null);

        // Pokédex
        const showPokedex = ref(false);
        const pokedexSearch = ref('');
        const pokedexList = ref([]);
        const seenList = ref([]);
        const caughtList = ref([]);
        const selectedDexEntry = ref(null);

        // PokéMart
        const showMart = ref(false);
        const martName = ref('');
        const martItems = ref([]);

        // Multicharacter State
        const showMulticharacter = ref(false);
        const characters = ref([]);
        const maxSlots = ref(4);
        const selectedChar = ref(null);
        const showCreateModal = ref(false);
        const showDeleteModal = ref(false);
        const deletingChar = ref(null);
        const newTrainer = ref({
            firstname: '',
            lastname: '',
            gender: 0,
            style: 'red',
            birthdate: '2000-01-01',
            starterId: 1
        });
        const outfits = ref({
            red: { name: 'red', label: 'Red (Kanto)', gender: 0, description: 'Pallet Town legend with red cap and trainer jacket.' },
            ethan: { name: 'ethan', label: 'Ethan (Johto)', gender: 0, description: 'Johto explorer with backward cap and hoodie.' },
            lucas: { name: 'lucas', label: 'Lucas (Sinnoh)', gender: 0, description: 'Sinnoh champion with blue beret and runners.' },
            leaf: { name: 'leaf', label: 'Leaf (Kanto)', gender: 1, description: 'Kanto challenger with sunhat and turquoise top.' },
            dawn: { name: 'dawn', label: 'Dawn (Sinnoh)', gender: 1, description: 'Sinnoh coordinator with white beanie and vest.' },
            serena: { name: 'serena', label: 'Serena (Kalos)', gender: 1, description: 'Kalos stylist with fashionable fedora and boots.' }
        });

        const availableOutfits = computed(() => {
            const g = Number(newTrainer.value.gender) || 0;
            return Object.values(outfits.value).filter(o => o.gender === g);
        });

        const starterChoices = ref([
            { id: 1, name: 'Bulbasaur', type1: 'grass' },
            { id: 4, name: 'Charmander', type1: 'fire' },
            { id: 7, name: 'Squirtle', type1: 'water' },
            { id: 25, name: 'Pikachu', type1: 'electric' },
            { id: 133, name: 'Eevee', type1: 'normal' }
        ]);

        const trainerSprites = {
            'red': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/red.png',
            'ash': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/red.png',
            'ethan': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/ethan.png',
            'lucas': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/lucas.png',
            'brendan': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/brendan.png',
            'hilbert': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/hilbert.png',
            'calem': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/calem.png',
            'rocket_m': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/rocket-grunt-m.png',
            'leaf': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/leaf.png',
            'dawn': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/dawn.png',
            'may': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/may.png',
            'serena': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/serena.png',
            'rosa': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/rosa.png',
            'gloria': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/gloria.png',
            'rocket_f': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/rocket-grunt-f.png'
        };

        const getTrainerAvatar = (gender, style) => {
            if (style && trainerSprites[style]) return trainerSprites[style];
            if (Number(gender) === 1) return trainerSprites['leaf'];
            return trainerSprites['red'];
        };

        const rotatePed = (diff) => {
            fetch(`https://${GetParentResourceName()}/rotatePed`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ diff: diff || 20 })
            });
        };

        const resetPedHeading = () => {
            fetch(`https://${GetParentResourceName()}/resetPedHeading`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({})
            });
        };

        const slotList = computed(() => {
            const list = [];
            for (let i = 1; i <= maxSlots.value; i++) {
                const char = characters.value.find(c => c.slot === i) || null;
                list.push({ slotNumber: i, char });
            }
            return list;
        });

        const isTrainerFormValid = computed(() => {
            return newTrainer.value.firstname.trim().length >= 2 &&
                   newTrainer.value.lastname.trim().length >= 2 &&
                   newTrainer.value.birthdate &&
                   newTrainer.value.starterId &&
                   newTrainer.value.style;
        });

        const selectSlot = (slot) => {
            if (!slot || !slot.char) return;
            selectedChar.value = slot.char;
            fetch(`https://${GetParentResourceName()}/previewCharacter`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ char: slot.char })
            });
        };

        const confirmPlayCharacter = (citizenid) => {
            fetch(`https://${GetParentResourceName()}/selectCharacter`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ citizenid })
            });
            showMulticharacter.value = false;
        };

        const openCreateModal = (slotNumber) => {
            newTrainer.value = {
                firstname: '',
                lastname: '',
                gender: 0,
                style: 'red',
                birthdate: '2000-01-01',
                starterId: 1
            };
            fetch(`https://${GetParentResourceName()}/previewStyle`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ gender: 0, style: 'red' })
            });
            showCreateModal.value = true;
        };

        const onGenderChange = () => {
            const g = Number(newTrainer.value.gender) || 0;
            newTrainer.value.style = (g === 1) ? 'leaf' : 'red';
            fetch(`https://${GetParentResourceName()}/previewStyle`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ gender: g, style: newTrainer.value.style })
            });
        };

        const selectOutfitStyle = (styleName) => {
            newTrainer.value.style = styleName;
            fetch(`https://${GetParentResourceName()}/previewStyle`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ gender: newTrainer.value.gender, style: styleName })
            });
        };

        const submitCreateTrainer = () => {
            if (!isTrainerFormValid.value) return;
            fetch(`https://${GetParentResourceName()}/createCharacter`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(newTrainer.value)
            });
            showCreateModal.value = false;
            showMulticharacter.value = false;
        };

        const promptDeleteCharacter = (char) => {
            deletingChar.value = char;
            showDeleteModal.value = true;
        };

        const confirmDeleteCharacter = () => {
            if (!deletingChar.value) return;
            fetch(`https://${GetParentResourceName()}/deleteCharacter`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ citizenid: deletingChar.value.citizenid })
            });
            showDeleteModal.value = false;
            deletingChar.value = null;
        };

        // Colors
        const typeColors = {
            normal: '#A8A878', fire: '#F08030', water: '#6890F0', grass: '#78C850',
            electric: '#F8D030', ice: '#98D8D8', fighting: '#C03028', poison: '#A040A0',
            ground: '#E0C068', flying: '#A890F0', psychic: '#F85888', bug: '#A8B820',
            rock: '#B8A038', ghost: '#705898', dragon: '#7038F8', steel: '#B8B8D0',
            dark: '#705848', fairy: '#EE99AC'
        };

        const getTypeColor = (type) => {
            if (!type) return '#888';
            return typeColors[type.toLowerCase()] || '#888';
        };

        const getHpColor = (cur, max) => {
            const ratio = cur / Math.max(1, max);
            if (ratio > 0.5) return '#10b981';
            if (ratio > 0.2) return '#f59e0b';
            return '#ef4444';
        };

        const getToastIcon = (type) => {
            if (type === 'success') return 'fa-solid fa-circle-check text-success';
            if (type === 'error') return 'fa-solid fa-triangle-exclamation text-danger';
            return 'fa-solid fa-circle-info text-primary';
        };

        // Authentic 6-Note 16-Bit Pokémon Center Recovery Jingle
        const playPokeCenterHealJingle = () => {
            try {
                const ctx = new (window.AudioContext || window.webkitAudioContext)();
                const notes = [
                    { f: 392.00, d: 0.16 }, // G4
                    { f: 440.00, d: 0.16 }, // A4
                    { f: 493.88, d: 0.16 }, // B4
                    { f: 587.33, d: 0.32 }, // D5
                    { f: 523.25, d: 0.32 }, // C5
                    { f: 659.25, d: 0.65 }  // E5
                ];
                let t = ctx.currentTime + 0.05;
                notes.forEach(n => {
                    const osc = ctx.createOscillator();
                    const gain = ctx.createGain();
                    osc.type = 'triangle';
                    osc.frequency.setValueAtTime(n.f, t);
                    gain.gain.setValueAtTime(0.22, t);
                    gain.gain.exponentialRampToValueAtTime(0.001, t + n.d - 0.02);
                    osc.connect(gain);
                    gain.connect(ctx.destination);
                    osc.start(t);
                    osc.stop(t + n.d);
                    t += n.d;
                });
            } catch (e) {
                console.error("Audio error:", e);
            }
        };

        // Window Message Listener
        onMounted(() => {
            window.addEventListener('message', (event) => {
                const item = event.data;
                if (!item || !item.action) return;

                switch (item.action) {
                    case 'playHealSound':
                        playPokeCenterHealJingle();
                        break;
                    case 'openMulticharacter':
                        characters.value = item.characters || [];
                        maxSlots.value = item.maxSlots || 4;
                        if (item.starters && item.starters.length > 0) {
                            starterChoices.value = item.starters;
                        }
                        if (item.outfits && Object.keys(item.outfits).length > 0) {
                            outfits.value = item.outfits;
                        }
                        if (characters.value.length > 0) {
                            selectedChar.value = characters.value[0];
                        }
                        showMulticharacter.value = true;
                        break;
                    case 'closeMulticharacter':
                        showMulticharacter.value = false;
                        break;
                    case 'updateHud':
                        hudLead.value = item.lead;
                        break;
                    case 'syncParty':
                        partyList.value = item.party || [];
                        if (partyList.value.length > 0 && !selectedPartyPoke.value) {
                            selectedPartyPoke.value = partyList.value[0];
                        }
                        break;
                    case 'notify':
                        pushToast(item.message, item.type);
                        break;
                    case 'openStarterMenu':
                        starters.value = item.starters || [];
                        showStarter.value = true;
                        break;
                    case 'openPartyMenu':
                        partyList.value = item.party || [];
                        selectedPartyPoke.value = partyList.value[0] || null;
                        showParty.value = true;
                        break;
                    case 'openPC':
                        currentBox.value = item.data.currentBox;
                        maxBoxes.value = item.data.maxBoxes;
                        boxPokemon.value = item.data.boxPokemon || [];
                        partyList.value = item.data.partyPokemon || [];
                        selectedPCPoke.value = null;
                        showPC.value = true;
                        break;
                    case 'openPokedex':
                        seenList.value = item.seen || [];
                        caughtList.value = item.caught || [];
                        pokedexList.value = Object.values(item.database || {});
                        showPokedex.value = true;
                        break;
                    case 'openMart':
                        martName.value = item.name;
                        martItems.value = item.items;
                        showMart.value = true;
                        break;
                    case 'openBattleUI':
                        battleData.value = {
                            battleId: item.battleId,
                            lead: item.lead,
                            opponent: item.opponent
                        };
                        battleSubmenu.value = 'main';
                        battleLogText.value = `A wild ${item.opponent.name} appeared!`;
                        inBattle.value = true;
                        break;
                    case 'battleLogEvent':
                        if (item.data) {
                            if (item.data.missed) {
                                battleLogText.value = `${item.data.attacker === 'player' ? battleData.value.lead.name : battleData.value.opponent.name}'s attack missed!`;
                            } else {
                                battleLogText.value = `${item.data.attacker === 'player' ? battleData.value.lead.name : battleData.value.opponent.name} used ${item.data.move}!`;
                            }
                            if (item.data.defenderHp !== undefined) {
                                if (item.data.attacker === 'player') {
                                    battleData.value.opponent.current_hp = item.data.defenderHp;
                                } else {
                                    battleData.value.lead.current_hp = item.data.defenderHp;
                                }
                            }
                        }
                        break;
                    case 'battleEnded':
                        battleLogText.value = item.message;
                        setTimeout(() => {
                            inBattle.value = false;
                            battleData.value = null;
                        }, 2500);
                        break;
                    case 'closeAll':
                        closeAllModals();
                        break;
                }
            });

            // ESC Key Handler
            window.addEventListener('keydown', (e) => {
                if (e.key === 'Escape') {
                    if (inBattle.value) {
                        if (battleSubmenu.value !== 'main') {
                            battleSubmenu.value = 'main';
                        }
                    } else {
                        closeUI();
                    }
                }
            });
        });

        const pushToast = (message, type = 'info') => {
            const id = Date.now() + Math.random();
            notifications.value.push({ id, message, type });
            setTimeout(() => {
                notifications.value = notifications.value.filter(t => t.id !== id);
            }, 3800);
        };

        const closeAllModals = () => {
            showStarter.value = false;
            showParty.value = false;
            showPC.value = false;
            showPokedex.value = false;
            showMart.value = false;
        };

        const closeUI = () => {
            closeAllModals();
            fetch(`https://${GetParentResourceName()}/closeUI`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({})
            });
        };

        // Starter Handlers
        const confirmStarter = () => {
            if (!selectedStarter.value) return;
            fetch(`https://${GetParentResourceName()}/chooseStarter`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ id: selectedStarter.value.id })
            });
            showStarter.value = false;
        };

        // Battle Handlers
        const sendBattleAction = (actionType, extraData = {}) => {
            battleLogText.value = "Executing action...";
            fetch(`https://${GetParentResourceName()}/battleAction`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    actionType: actionType,
                    ...extraData
                })
            });
            battleSubmenu.value = 'main';
        };

        const openBagInBattle = () => {
            battleSubmenu.value = 'bag';
        };

        const openPartyInBattle = () => {
            showParty.value = true;
        };

        // PC Box Helpers
        const getPokeAtBoxSlot = (slotIdx) => {
            return boxPokemon.value.find(p => p.storage_index === slotIdx);
        };

        const selectPCPoke = (poke) => {
            selectedPCPoke.value = poke;
        };

        const changeBox = (boxNum) => {
            currentBox.value = boxNum;
            fetch(`https://${GetParentResourceName()}/switchBox`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ boxNumber: boxNum })
            });
        };

        const withdrawSelectedPC = () => {
            if (!selectedPCPoke.value) return;
            fetch(`https://${GetParentResourceName()}/withdrawPC`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ pokemonId: selectedPCPoke.value.id })
            });
            selectedPCPoke.value = null;
        };

        const depositPartyToPC = (poke) => {
            fetch(`https://${GetParentResourceName()}/depositPC`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    partySlot: poke.storage_index,
                    targetBox: currentBox.value
                })
            });
        };

        const releasePCPoke = (poke) => {
            if (!poke) return;
            fetch(`https://${GetParentResourceName()}/releasePokemon`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ pokemonId: poke.id })
            });
            selectedPCPoke.value = null;
        };

        const releasePoke = (poke) => {
            if (!poke) return;
            fetch(`https://${GetParentResourceName()}/releasePokemon`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ pokemonId: poke.id })
            });
        };

        const movePartyUp = (poke) => {
            if (!poke || poke.storage_index <= 1) return;
            fetch(`https://${GetParentResourceName()}/swapParty`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    slot1: poke.storage_index,
                    slot2: poke.storage_index - 1
                })
            });
        };

        // Pokédex Helpers
        const isSeen = (id) => seenList.value.includes(id);
        const isCaught = (id) => caughtList.value.includes(id);

        const filteredPokedex = computed(() => {
            if (!pokedexSearch.value.trim()) return pokedexList.value;
            const q = pokedexSearch.value.toLowerCase();
            return pokedexList.value.filter(p =>
                p.name.toLowerCase().includes(q) || String(p.id).includes(q)
            );
        });

        // PokéMart
        const buyMartItem = (itemKey, count) => {
            fetch(`https://${GetParentResourceName()}/buyMartItem`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ itemKey, amount: count })
            });
        };

        return {
            showMulticharacter, characters, maxSlots, selectedChar, showCreateModal, showDeleteModal, deletingChar, newTrainer, starterChoices,
            outfits, availableOutfits, selectSlot, onGenderChange, selectOutfitStyle, rotatePed, resetPedHeading,
            getTrainerAvatar, slotList, isTrainerFormValid, confirmPlayCharacter, openCreateModal, submitCreateTrainer, promptDeleteCharacter, confirmDeleteCharacter,
            hudLead, notifications, showStarter, starters, selectedStarter, confirmStarter,
            inBattle, battleData, battleSubmenu, battleLogText, sendBattleAction, openBagInBattle, openPartyInBattle,
            showParty, partyList, selectedPartyPoke, releasePoke, movePartyUp,
            showPC, currentBox, maxBoxes, boxPokemon, selectedPCPoke, selectPCPoke, changeBox, withdrawSelectedPC, depositPartyToPC, releasePCPoke, getPokeAtBoxSlot,
            showPokedex, pokedexSearch, filteredPokedex, selectedDexEntry, isSeen, isCaught,
            showMart, martName, martItems, buyMartItem,
            closeUI, getTypeColor, getHpColor, getToastIcon
        };
    }
}).mount('#app');

