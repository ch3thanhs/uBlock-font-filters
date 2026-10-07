# uBlock Custom Filters

A collection of uBlock Origin cosmetic filters that enforce custom fonts across websites.

## What this does

These [`filters.md`](./filters.md) use CSS-based cosmetic rules to force a uniform font stack on each site:

- **Body text (sans-serif)** → `Inter`
- **Code (monospace)** → `JetBrains Mono`

This makes the UI and code snippets look consistent, regardless of the site's default fonts.

## Prerequisites

- **uBlock Origin** or **uBlock Origin Lite** must be installed in your browser.
- The fonts referenced by these filters must be installed on your system, otherwise the browser will fall back to its default fonts:
  - `Inter` — [download](https://github.com/rsms/inter)
  - `JetBrains Mono` — [download](https://www.jetbrains.com/lp/mono/)

> [!TIP]
> If you don't want to install these fonts, you can edit the filters and replace `Inter` with a font you already have (e.g., `Atkinson
> Hyperlegible`, `Papyrus`, or `Comic Sans`).

## Sites covered

| Site | Domain |
|------|--------|
| GitHub | `github.com` |
| ChatGPT | `chatgpt.com` |
| Visual Studio Marketplace | `marketplace.visualstudio.com` |
| Microsoft Learn | `learn.microsoft.com` |
| Hacker News | `news.ycombinator.com` |
| YouTube | `youtube.com` |

> [!NOTE]
> `YouTube` filters contain an additional watermark removal filter.

## Importing the filters

The easiest option is to [**download the complete `filters.txt` file**](https://github.com/ch3thanhs/uBlock-font-filters/raw/refs/heads/main/filters.txt) and import it directly. The file contains all filters plus `!` comments separating the site sections.

### uBlock Origin

1. Open the **uBlock Origin Dashboard**.
2. Open **My filters**.
3. Click **Import and append...**.
4. Select the downloaded `filters.txt` file.
5. Click **Apply changes**.

You can also open `filters.txt`, copy its contents, and paste them into **My filters** manually.

### uBlock Origin Lite

1. Open **uBlock Origin Lite** settings.
2. Open **Custom filters**.
3. Open **Import/Export**.
4. Click **Import and append...**.
5. Select the downloaded `filters.txt` file.
6. Apply/import the changes.

You can also open `filters.txt`, copy its contents, and paste them into the custom-filter import box.

### Import filters for a single site

For either version, open [`filters.md`](./filters.md), find the site's section, and copy the rules inside that section's code block. Paste them into the appropriate custom-filter editor and apply/import the changes.

### Importable TXT

The repository keeps the source filters in Markdown for readability. The importable [`filters.txt`](./filters.txt) is generated automatically by **GitHub Actions** whenever [`filters.md`](./filters.md) changes.

## Filter format

Each rule follows the standard uBlock Origin cosmetic filter syntax:

```
<domain>##<selector>:style(<CSS properties> !important;)
```

Example:

```css
github.com##:is(body, button, input, textarea, select, option, [contenteditable="true"]):style(font-family: "Inter", sans-serif !important;)
```
