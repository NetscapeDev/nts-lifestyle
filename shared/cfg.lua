Styles = {
    ["hacker"] = {
        desc = 'Controlla il flusso mediatico della città',
        accounts = { money = 50000, bank = 500, black_money = 0 },
        img = 'https://media.discordapp.net/attachments/982738096774856714/1086369462476886169/ezgif.com-webp-to-png.png',
        items = {
            ["bandage"] = {
                quant = 5,
                label = 'Benda',
                tipo = 'item',
            },
        }
    },
    ["business man"] = {
        desc = 'Crea e sviluppa il tuo impero economico',
        accounts = { money = 50000, bank = 0, black_money = 0 },
        img = 'https://media.discordapp.net/attachments/982738096774856714/1086369026512519231/imgbin-grand-theft-auto-v-gta-5-online-gunrunning-smuggler-s-run-grand-theft-auto-san-andreas-playstation-4-others-man-holding-briefcase-1GbaWHu6nDZysuGvwTmGz6PjU-removebg-preview.png',
        items = {
            ["bandage"] = {
                quant = 5,
                label = 'Benda',
                tipo = 'item',
            },
        }
    },
    ["servizi segreti"] = {
        desc = 'Opera in segreto per il bene della città',
        accounts = { money = 50000, bank = 0, black_money = 0 },
        img = 'https://media.discordapp.net/attachments/982738096774856714/1086368450877849770/png.png?width=462&height=702',
        items = {
            ["bandage"] = {
                quant = 5,
                label = 'Benda',
                tipo = 'item'
            },
            ["weapon_pistol"] = {
                quant = 1,
                label = 'Glock',
                tipo = 'arma',
            },
        }
    },
    ["gangster"] = {
        desc = 'Fai valere il tuo territorio e sovrasta le altre gangs',
        accounts = { money = 50000, bank = 0, black_money = 0 },
        img = 'https://www.seekpng.com/png/full/336-3366709_gta-v-character-transparent-gta-the-lost-and.png',
        items = {
            ["bandage"] = {
                quant = 5,
                label = 'Benda',
                tipo = 'item'
            },
            ["weapon_pistol_mk2"] = {
                quant = 1,
                label = 'Glock MK2',
                tipo = 'arma',
            },
        }
    },
    ["civile"] = {
        desc = 'Costruisci la tua vita partendo da zero',
        accounts = { money = 50000, bank = 0, black_money = 0 },
        img = 'https://gtaonline.hu/Themes/GTAForum/images/home/arts/man_29.webp',
        items = {
            ["bandage"] = {
                quant = 5,
                label = 'Benda',
                tipo = 'item'
            },
            ["weapon_pistol_mk2"] = {
                quant = 1,
                label = 'Glock MK2',
                tipo = 'arma',
            },
        }
    }
}

Lang = {
    ['money'] = 'Contanti',
    ['bank'] = 'Saldo bancario',
    ['black_money'] = 'Contanti sporchi',
    ['selezione'] = 'Selezione',
    ['lifestyle'] = 'Stile di vita',
    ['lifebio'] = 'Seleziona lo stile di vita che vuoi seguire nel corso della tua storia',
    ['button'] = 'Seleziona',
    ['warning'] = 'La selezione dello stile di vita influirà sul proseguimento del tuo personaggio'
}

function AddItem(player, item, qta)
    exports['ox_inventory']:AddItem(player, item, qta)
end

function AddWeapon(player, weapon, qta, ammo)
    exports['ox_inventory']:AddItem(player, weapon, qta)
end

function AddVehicle(player, model)
    -- your code
end