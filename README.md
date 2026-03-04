# Dyn Flagger

A web tool for generating dynamic flag condition code for the Roblox game **Rise of Nations (RoN)**. Dyn Flagger lets you configure which flags appear for a nation based on ideology and political law requirements, then outputs ready-to-paste Lua code for the game's flag system.

🔗 **Live site:** [dyn-flagger.pages.dev](https://dyn-flagger.pages.dev)

---

## What it does

Rise of Nations supports "dynamic flags" — flags that only display when a nation meets certain conditions (e.g. a communist flag that only shows under a Communist ideology with specific political laws). Configuring these by hand is tedious. Dyn Flagger gives you a UI to:

- **Browse nations, releasable states, and formable nations** pulled live from the RoN wiki (Fandom)
- **Configure flags** with ideology requirements (Non-Aligned, Socialism, Communism, Liberalism, Democracy, Nationalism, Fascism) and political law conditions (allowed and NOT-allowed levels)
- **Preview flags** using their Roblox asset thumbnail
- **Export** the finished Lua snippet, plus a formatted Discord-ready block with image links and source descriptions

---

## Tech stack

| Layer | Tool |
|---|---|
| Frontend bundler | [Vite](https://vitejs.dev/) |
| Deployment | [Cloudflare Pages](https://pages.cloudflare.com/) via [Wrangler](https://developers.cloudflare.com/workers/wrangler/) |
| Lua parsing | [luaparse](https://www.npmjs.com/package/luaparse) |
| Data source | RoN Fandom wiki API (nations, flags, laws, tags) |
| Image source | Roblox thumbnail API |

---

## Project structure

```
/
├── src/
│   ├── script.js            # Main UI logic (flag builder, nations list, output generation)
│   ├── fandomProcessor.js   # Fetches flag image URLs from the RoN Fandom wiki
│   ├── robloxProcessor.js   # Resolves Roblox asset IDs to thumbnail URLs
│   └── images/              # Static assets (unknown flag placeholder, icons)
├── functions/
│   └── api/
│       └── fandom-data.js   # Cloudflare Pages Function — proxies Fandom wiki data
├── dist/                    # Vite build output (generated)
├── vite.config.js
├── wrangler.toml
└── package.json
```

> The `/api/fandom-data` endpoint is a Cloudflare Pages Function that proxies requests to the Fandom wiki, keeping API calls server-side and avoiding CORS issues.

---

## Getting started

### Prerequisites

- Node.js 18+
- A Cloudflare account (for `wrangler pages dev` and deployment)

### Install

```bash
npm install
```

### Development

Run a full local preview (builds with Vite, then serves via Wrangler to emulate the Cloudflare Pages environment including the API function):

```bash
npm run dev
```

Or run Vite's dev server alone (no Cloudflare Functions — API calls will fail):

```bash
npm run dev:vite
```

### Build

```bash
npm run build
```

Output goes to `dist/`.

### Deploy

```bash
npx wrangler pages deploy dist
```

Or connect your repo to Cloudflare Pages for automatic deployments on push.

---

## How the output works

Dyn Flagger generates a Lua table snippet in the format expected by Rise of Nations' dynamic flag system:

```lua
["Nation Name"] = {
    ["Flag Name"] = {ID = "rbxassetid://000000000",
        Requirements = {
            ["Ideology"] = '["Communism"]',
            ["Political_Law"] = '{"Unique_Monarchy":["1"]}',
            ["NOT_Political_Law"] = '{"Conscription":["4"]}',
        },
    },
},
```

It also generates a Discord-formatted block with thumbnail image links and source descriptions for wiki/pull-request submissions.

---

## Flag condition logic

Each flag supports a **three-state cycle** per law level:

1. **Unset** — no requirement
2. **Allowed** (green) — nation must have this law level
3. **NOT Allowed** (red) — nation must NOT have this law level

Ideology selection works similarly: selecting ideologies marks them as required; unselecting returns to "any ideology."