# S.A.F.E
Skips PAYDAY 2's Steam inventory check and gives you access to all tradable skins.
Name stands for "**S**kins **A**cquired **F**airly **E**asily".

[**Download**](https://github.com/CATEM1NAL/PD2-SAFE/releases/latest/download/S.A.F.E.zip)

While this very objectively a cheat (no way around it), the skins in this game are
in a bit of a weird place where a lot of them simply can't be obtained anymore -
the licenses for the characters they were associated with expired in 2020 and 2024,
and with the licenses expiring the skins were made unmarketable. Due to this
skin unlockers are now the only way to actually gain access to what are some of the
best looking skins in the game.

There *are* other skin unlockers that exist, but after looking at the first one
that one of my friends was using I was honestly kinda baffled at how they chose to
implement it. It functionally works fine but struck me as an odd implementation choice
and due to how it was written, tries to run *every frame*.

This implementation specifically targets the Steam inventory load check and prevents
the game from ever trying to access your inventory, simply returning a list of every
tradable skin in the game instead. This is a much lighter approach and has additional
checks in place to prevent the game from trying to add the Immortal Python skins
(which were turned into a weapon colour some years ago) and additionally unlocks all
of the tradable armour skins too.

As a side effect of how this is implemented, it also prevents the game from getting
softlocked on a black loading screen - the reason that happens sometimes is because
the game gets stuck trying to load the Steam inventory, which [this](https://modworkshop.net/mod/52035)
mod fixes. Because S.A.F.E prevents the game from trying to poll Steam at all, it also fixes the
loading softlock as well (making the aforementioned mod unneeded while S.A.F.E is active).
