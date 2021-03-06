# Vision Lib
A general purpose library for minetest modding. Based on the utility functions from ocular_networks, then extended whenever i need a reusable feature.


## Documentation
All of Vision Lib's functions and constants reside within the global `visionLib` table.

### Table Tools
The `visionLib.Table` table contains functions for dealing with tables:

`visionLib.Table.Clone(table, [exclude])`
Creates an unlinked recursive copy of a table, with the optional ability to exclude certain fields using the `exclude` parameter, supplied with `{field_to_ignore=true, ...}`

`visionLib.Table.HasKey(table, key)` 
Return a boolean value from checking whether a certain key exists in a table.

`visionLib.Table.HasValue(table, value)` 
Return a boolean value from checking whether a certain value exists in a table.

`visionLib.Table.Len(table)` 
Return the full length of a table irrespective of whether fields are named or numbered.

`visionLib.Table.Merge(table_1, table_2)` 
Return the result of merging `table_1` and `table_2`, with `table_2`'s keys taking priority.


---
### Common Utilities 
The `visionLib.Common` table contains generic utility functions and constants.

#### Constants:
`visionLib.Common.hexDigits`: An ordered list of strings representing the allowed characters in a hexadecimal string. 

`visionLib.Common.vowels`: A list containing strings representing latin vowel _letters_ (does not include multicharacter vowels).

`visionLib.Common.consonants`: A list containing possible consonant sounds in the latin alphabet (may be incomplete).

`visionLib.Common.syllableStructs`: A list containing certain syllable structures which are guaranteed to be pronounceable.

`visionLib.Common.capitals`: A key-value list representing the relationship between lowercase letters and capitals.

#### Global Vars
`visionLib.Common.usedWords`: A list of all previously-generated words recieved from the word generator tool.

#### Functions

`visionLib.Common.SmartOverrideItem(name, definition)`
Replaces the definition of an item by merging `definition` with the existing one, or creates the item if it does not exist.

`visionLib.Common.GetAdjacents(position)`
Returns the positions surrounding a location, as a table with the format:
 - `x`: Positive X
 - `X`: Negative X
 - `y`: Positive Y
 - `Y`: Negative Y
 - `z`: Positive Z
 - `Z`: Negative Z

`visionLib.Common.IncreasingRarity(magnitude)`
Returns an ordered table of integers, from `1` to `magnitude`, where each number occurs a number of times inverse to its value in relation to `magnitude`. The inverse of `visionLib.Common.DecreasingRarity`.

`visionLib.Common.DecreasingRarity(magnitude)`
Returns an ordered table of integers, from `1` to `magnitude`, where each number occurs a number of times equal to its value. The inverse of `visionLib.Common.IncreasingRarity`.

`visionLib.Common.RandomHex(length, base_max)`
Returns a string of length `length` representing a number in base `base_max`. The highest base allowed is 16.

`visionLib.Common.RandomSyllable([structure])`
Returns a string representing a randomly-constructed syllable based on a 'structure' value, which is a string comprised of `V` and `C` which will become vowels and consonants respectively. If no structure is supplied, a random structure is picked which is guaranteed to be pronounceable.

`visionLib.Common.RandomWord([length], [maximum])`
Generate a random word that is always pronounceable. If `length` is present, it will be the length of the word in syllables. Otherwise a random length is picked. If `maximum` is set, it will limit the length of the random-sized word. The total maximum length that can be generated without specifying `length` is 9.

`visionLib.Common.TitleFormat(text)`
Returns the result of capitalizing the first letter in every word of `text`.

`visionLib.Common.ParagraphFormat(text)`
Returns the text formatted like a paragraph (first letter capitalized, begin with indent).

---
### CTM Handler
The `visionLib.CTM` table contains functions for creating and applying automated node replacements.

#### Global Vars
`visionLib.RegisteredCtmHandlers`: Holds all registered CTM handlers.

#### Functions
`visionLib.CTM.NewCtmHandler(node, affectors, rules)`
Register a new CTM handler for the nodename `node`. Each node may have one CTM handler. `affectors` is a list of nodenames formatted as `{["modname:nodename"]=true, ...}`. `rules` is a list of replacement rules. Each rule is formatted as a table like so:
`{result="modname:nodename", keys={"x", "X", "z", "Z", ...}}` 
Where `node` will be replaced with `result` if there is an affector in each key position. Keys represent locations relative to the main node, with the same key format as `visionLib.Common.GetAdjacents`.
An example handler:
```lua
visionLib.CTM.NewCtmHandler("default:glass",
{
	["default:tree"]=1,
},
{
	{result="default:tree", keys={"x", "X", "z", "Z"}}
})
```
This handler will replace a `default:glass` node with `default:tree` if it is surrounded by `default:tree` nodes on all sides but the top and bottom.

`visionLib.CTM.HandleNode(pos)`
Update the CTM manager at position `pos`. Required for any CTM handlers to take place.

---
### File Handler
Contains functions for managing files.

`visionLib.File.Exists(filename)` Returns true if the file `filename` exists.

`visionLib.File.Create(filename)` Create an empty file `filename`.

`visionLib.File.Write(filename, text)` Replace the content of filename `filename` with `text`.

`visionLib.File.Add(filename, text)` Append `text` to the file `filename`.

`visionLib.File.Read(filename)` Returns the contents of `filename`.

`visionLib.File.MkDir(dirname)` Create a folder named `dirname`.

---
### Material System
The table `visionLib.Material` contains functions for standardised item materials, independent of the current game. 

`visionLib.Material.Require(materials)`
Marks the specified materials as needed, causing them to be generated at load time. Non-required materials do not exist. 
`material` must be a table of material names, which can be any registered material or `all`, in which case all materials will be generated.

`visionLib.Material.Generate()`
Reloads the definitions of all materials.

`visionLib.Material.Create(name, display_name, hardness, color, [is_not_ore])`
Registers all the required item types of a material based on the supplied values.
`name` is the technical name of the material.
`display_name` is used in item descriptions.
`hardness` is a mechanical properties class.*
`color` is the base color used by the texture generator.
`is_not_ore`, if true, will disable the registry of raw material forms.

\*a mechanical properties class is one of the following:

 - 'hard' 
   A metal like steel or titanium
 - 'soft'
   A substance like plastic or rubber, or a soft metal like lead
 - 'brittle'
   A substance like graphite or chalk
 - 'fragile'
   A glass-like mineral such as diamond and other crystals
 - 'powder'
   Something so brittle it can only be a powder
 - 'strange'
   A hard material that cannot be made into certain items due to reasons other than hardness (like radioactivity)
 - 'stonelike'
   As the name implies, a material such as stone or ceramic

`visionLib.Material.Register(name, defunc)`
Defines a new material with technical name `name`. `defunc` is a function which handles the creation of items for the material; in its most basic form it consists of this code:
```lua
visionLib.Material.Register('materialname', function()
  visionLib.Material.Create("materialname", "Material Name", "hard", "ffffffd0")
end)
```
However it should also handle any cross-mod compatibility. Refer to `res/material.lua` for examples.

_Note: materials are registered once all mods are finished loading. If you need to register materials during play, run `visionLib.Material.Generate()` afterward._

`visionLib.Material.CreateVariants(nodename, [add_recipes])`
Registers carved variants of a node. Requires simple tiles, uses first tile only. If `add_recipes` is true, default style recipes will be created for each node.

---
### Schematic Tools
The table `visionLib.Schem` contains a single function:

`visionLib.Schem.GetConnected(pos, acceptable, [extra, extra_only])`
This function returns a table of all connected nodes findable from `pos` that are supplied in `acceptable`. Optionally includes any nodes in `extra`, but nodes in this table are not considered 'connections' and so will end a search branch even if there are other acceptable nodes after it. If `extra_only` is true, the result will only include nodes in `extra`.

---
### Sound Library
The `visionLib.Sound` table contains SoundSpec constructors for vision lib's built in sounds. This list is constantly being expanded, and will ideally include sounds for every basic node material.

 - `visionLib.Sound.Metal()`: Metallic sounds for things like metal railing, grates, etc.
 - `visionLib.Sound.Glass()`: More realistic glass sounds for windows, crystals, etc.
 - `visionLib.Sound.Sand()`: Sounds suitable for any powedered material.
 - `visionLib.Sound.Plastic()`: Sounds for things like plastic drums, furniture, etc.
 - `visionLib.Sound.Slime()`: Sounds ideal for mud & slime.

---
### Cross-Mod Compatibility
Vision Lib supports cross-mod compatibility with quite a few mods.

#### Default
 - Material system interfacing for all metals & minerals
 - Automatic variants for many building blocks
 
#### MoreOres
 - Material system interfacing for Mithril & Silver
 
#### Technic
 - Material system interfacing for many metals and minerals
 
#### Basic Materials
 - Material sytstem interfacing for brass
 
 
## Licensing
vision_lib (c) by PolySaken

vision_lib is licensed under a
Creative Commons Attribution-ShareAlike 4.0 International License.

You should have received a copy of the license along with this
work. If not, see http://creativecommons.org/licenses/by-sa/4.0/
