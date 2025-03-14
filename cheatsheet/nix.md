# Comments

- `#` - For single line comments
- `/* */` - C-style block comments

# Data Types

- `123` - number type
- `123.1` - floating point type
- `" "` - single-line strings
- `'' ''` - multi-line strings
- `"String content with ${someVariable}"` - string variable interpolation
- `["hi" world 42.0]` - Nix List (like JSON arrays)
- `
    {
      name = "Sai";
      year = 2025;
    }
  `
  - Nix Attribute Set (like JSON objects)

# Nix Functions

`aParameter: aParameter + 1`

- Nix functions (like JS arrow functions)
- If above function is named /* f = */
  - Will be invoked like `f 42`

## Currying

- Nix is functional
- Functions only accept a single parameter
- Can accept multiple parameters like this with currying
`a: b: c: a + b + c`

## Attribute Set Parameter

Alternatively, can be called with a single *attribute-set* paramter like this:
`{a, b, c}: a + b + c`

Invoked like this:
`
/* f = */
f {a = 1; b = 2; c = 3;}
`

## Optional Parameters
`{a, b, c ? 40}: a + b + c`

# Conditionals

`
if (x>42)
  then "big"
  else "small"
`

# Bindings

Nix is functional and assignments are immutable.
Functions bindings are performed like so:
`
let
  f = a: a + 2;
in
  f 40
`

Nix is lazily evaluated.
A binding can be used in a subsequent one like this:
`
let
  f = a: a + 2;
  result = f 40;
in
  result
`

# Bringing *attribute sets* into scope

## Accessor syntax

`
let
  myAttrs = {a = 1; b = 2; c = 3;}
in
  myAttrs.a + myAttrs.b + myAttrs.c
`

## `with` syntax (discouraged)

`
let
  myAttrs = {a = 1; b = 2; c = 3;};
in
  with myAttrs;
    a + b + c
`

## `inherit` syntax (encouraged)

`
let
  myAttrs = {a = 1; b = 2; c = 3;};
  inherit (myAttrs) a b c;
in
  a + b + c
`

# Nix *builtins*

## `attrNames`

`
builtins.attrNames {a = 1; b = 2;}
# => ["a" "b"]
`

## `functionArgs`

`builtins.functionArgs`

# File Imports

`
# a.nix
4
# b.nix
import ./a.nix
`
