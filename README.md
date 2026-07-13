# Hera Homebrew Tap

Homebrew formulae for [Hera](https://github.com/NotNull92/hera-agent-godot) —
a low-token CLI that lets AI coding agents inspect and control a live Godot
editor over localhost HTTP.

## Install

```sh
brew install NotNull92/hera/hera
```

Or add the tap first:

```sh
brew tap NotNull92/hera
brew install hera
```

Check it with `hera version`. The `hera-agent-godot` name is kept as a
transitional alias.

The CLI pairs with the **Hera Agent Godot** editor addon — install it from
the [Godot Asset Store](https://store.godotengine.org/asset/notnull92/hera-agent-godot/)
or the [GitHub release assets](https://github.com/NotNull92/hera-agent-godot/releases/latest),
then enable it under **Project → Project Settings → Plugins**.

## Docs

- [Command reference](https://github.com/NotNull92/hera-agent-godot/blob/main/docs/COMMANDS.md)
- [Output contract](https://github.com/NotNull92/hera-agent-godot/blob/main/docs/CONTRACT.md)
- [Godot support matrix](https://github.com/NotNull92/hera-agent-godot/blob/main/docs/SUPPORT_MATRIX.md)
