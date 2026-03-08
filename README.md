# 📝Description
This datapack for Minecraft 1.21.1 adds the **Berserker Potion**, which upon consumption grants stackable Absorption levels for each hostile mob killed. The effect strengthens with each additional kill, but will stop once you cease fighting.

# ⚒️How to obtain:
Craft a Berserker potion with:
- 1 × Water Bottle
- 1 × Nether Wart
- 1 × Gold Nugget
- 1 × Redstone Dust

# 🔥Effect details
The Berserk potion last for 2min (2400 ticks) by default. Any kills while the potion is active grants you 1 Level of Absorption (2 temporary Hearts) up to a max level of 5. The Absorption effect lasts for 10s (200 ticks) initially and will be extended by 5s (100 ticks) per kill. The Absorption effect also expires when the potion effect ends and also on player death.

# ⚙️Datapack configuration
Run the following command to configure the max Absorption level, base and bonus duration per kill of the Absorption effect and the potion duration:
```
/function berserk:config
```
# 📤Uninstall
Either open the config menu and select the uninstall option or run the following command:

```
/function berserk:uninstall
```

# ⚠️Compatibility
- [Bigger Stack Size](https://modrinth.com/datapack/bigger-stack-size): Erases the potions's custom NBT data, which triggers the Berserk effect. Use e.g. [Stack Manager](https://modrinth.com/mod/stack-manager) instead.
