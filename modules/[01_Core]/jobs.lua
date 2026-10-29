-- ====================================================================
-- PokeFiveM Framework - Jobs & Grades Registry
-- Developed by: Pika Studio
-- ====================================================================

PokeCore.Shared.Jobs = {
    ['unemployed'] = {
        label = 'Civilian',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Freelancer', payment = 50 }
        }
    },
    ['trainer'] = {
        label = 'Pok+¬mon Trainer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Rookie Trainer', payment = 75 },
            ['1'] = { name = 'Ace Trainer', payment = 150 },
            ['2'] = { name = 'Veteran Trainer', payment = 250 },
            ['3'] = { name = 'Pok+¬mon Champion', payment = 500 }
        }
    },
    ['gymleader'] = {
        label = 'Gym Leader',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Gym Challenger Guide', payment = 150 },
            ['1'] = { name = 'Gym Trainer', payment = 250 },
            ['2'] = { name = 'Gym Leader', payment = 450, isboss = true }
        }
    },
    ['professor'] = {
        label = 'Pok+¬mon Laboratory',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Lab Assistant', payment = 120 },
            ['1'] = { name = 'Field Researcher', payment = 220 },
            ['2'] = { name = 'Senior Professor', payment = 400, isboss = true }
        }
    },
    ['police'] = {
        label = 'Police Department',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Cadet Jenny', payment = 150 },
            ['1'] = { name = 'Officer Jenny', payment = 250 },
            ['2'] = { name = 'Sergeant', payment = 350 },
            ['3'] = { name = 'Chief of Police', payment = 500, isboss = true }
        }
    },
    ['medic'] = {
        label = 'Pok+¬Center Medical Care',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Nurse Assistant', payment = 150 },
            ['1'] = { name = 'Nurse Joy', payment = 275 },
            ['2'] = { name = 'Chief Medical Doctor', payment = 450, isboss = true }
        }
    },
    ['breeder'] = {
        label = 'Pok+¬mon Daycare & Breeding',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Apprentice Breeder', payment = 100 },
            ['1'] = { name = 'Master Breeder', payment = 250, isboss = true }
        }
    }
}
