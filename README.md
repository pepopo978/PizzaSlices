# ARCHIVE of PizzaSlices by Pizzahawaii. The original repository was deleted.
I am not the original Author and am not keeping it updated.

# 🍕 PizzaSlices

A simplified [OPie](https://www.curseforge.com/wow/addons/opie) clone.

<img src="https://raw.githubusercontent.com/Pizzahawaiii/media/refs/heads/main/PizzaSlices/demo.gif" width="100%">

## Install

1. Download and extract [latest version](https://github.com/Pizzahawaiii/PizzaSlices/archive/main.zip)
2. Copy the "PizzaSlices-main" folder to `<WoW>/Interface/AddOns` and rename it to "PizzaSlices"
3. (Re)start WoW

## Features

PizzaSlices lets you create custom rings, fill them with various types of actions and bind them to different keys. It doesn't reuse any of your existing action buttons so you won't lose any of that precious action bar space.

### ItemRack Sets

<img src="https://raw.githubusercontent.com/Pizzahawaiii/media/refs/heads/main/PizzaSlices/sets.gif" width="50%" align="left" />

If you're using ItemRack, you can also add your gear sets to rings to quickly change outfits on the fly.
<br clear="left"/>

### Outfitter Sets

Will display complete and partial outfits.  After adding outfits to a ring you can right click them to choose a custom icon.

## Opening Rings via Macros

You can open your PizzaSlices rings through macros instead of game-internal key bindings with this command:

```
/ps open <ringIndex>
```

`<ringIndex>` has to be a number - the index of the ring you want to open according to the ring list in the settings menu, starting with `1`.

Let's say you see three rings in the settings:

```
Raid Marks
General
Mounts
```

Then creating a macro with `/ps open 1` would open the Raid Marks, `/ps open 2` would open the General ring, and `/ps open 3` would open the Mounts ring.

> [!WARNING]
>
> Opening rings through macros is currently not supported if you have the addon Bongos installed.

> [!NOTE]
> 
> This feature requires your action buttons to trigger on keydown, not on keyup (which is the game's default). PizzaSlices therefore comes with its own version of [Snowfall](https://github.com/Linae-Kronos/Classic-Snowfall). Note that if you're using pfUI, PizzaSlices forces your "Trigger Actions on Key Down" pfUI action bar setting to always be enabled.

> [!NOTE]
>
> Opening rings via macros doesn't work when clicking the macro button. You have to bind the macro action button to a key and press that key to open the ring.

## Settings

Use one of the following commands to open the settings menu:

```
/ps
/slices
/pizzaslices
```

### Add Stuff to a Ring

<img src="https://github.com/Pizzahawaiii/media/blob/main/PizzaSlices/settings-ringcreation.gif?raw=true" width="65%" align="left" />

On the 'Rings' tab, click on the green + or on the name of one of the existing rings. Select one of the categories on the right. Then, drag & drop any of the items from the center into the ring area on the left (purple background). Finally, click 'Save'.
<br clear="left"/>

### Remove Stuff from a Ring

<img src="https://github.com/Pizzahawaiii/media/blob/main/PizzaSlices/settings-slice-deletion.gif?raw=true" width="65%" align="left" />

To remove an item from a ring, simply drag & drop it into the red trash can area that appears when you start dragging it away from the ring section (purple background).
<br clear="left"/>

## Missing Feature? Bug?

Please check the [issue list](https://github.com/Pizzahawaiii/PizzaSlices/issues) to see if it was reported already. If not, create a new issue or contact me on Discord or ingame (see below).

## Contact

You're always more than welcome to ask questions or provide any kind of feedback.

- **Turtle Discord**: Pizza
- **Nordanaar**: Pizzahawaii, Pizzamista, Pizzapimp, Pizzapaws, Pizzapog<br />If you see anyone whose name starts with 'Pizza', chances are it's me. 

## Credits

Thanks to [foxlit](https://www.curseforge.com/members/foxlit) for the inspiration! 🚀

Thanks to all the beta testers for providing valuable feedback! ♥️

- Hersi/blu5hit
- Cliffholger
- Lo5t1ncyb3r
- mentalxpc
- rooti
- Ténébreux
- Zcoobee

Thanks to Kanki for the name PizzaSlices! 💯
