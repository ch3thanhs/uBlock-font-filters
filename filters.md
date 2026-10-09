# uBlock Origin Filters

## GitHub

```css
github.com##html:style(--fontStack-sansSerif: "Inter", sans-serif !important; --fontStack-sansSerifDisplay: "Inter", sans-serif !important; --fontStack-system: "Inter", sans-serif !important; --brand-body-fontFamily: "Inter", sans-serif !important; --brand-heading-fontFamily: "Inter", sans-serif !important; --brand-body-fontFamilyAlt: "Inter", sans-serif !important; --brand-heading-fontFamilyAlt: "Inter", sans-serif !important; --brand-fontStack-sansSerif: "Inter", sans-serif !important; --brand-fontStack-sansSerifAlt: "Inter", sans-serif !important; --brand-fontStack-system: "Inter", sans-serif !important; --brand-fontStack-monospace: "Inter", sans-serif !important; --fontStack-monospace: "JetBrains Mono", monospace !important; font-family: "Inter", sans-serif !important;)
github.com##:is(body, button, input, textarea, select, option, [contenteditable="true"]):style(font-family: "Inter", sans-serif !important;)
github.com##:is(pre, pre *, code, code *, kbd, kbd *, samp, samp *, tt, tt *, .blob-num, .blob-num *, .blob-code, .blob-code *, .react-code-text, .react-code-text *, [data-testid="read-only-cursor-text-area"], .highlight, .highlight *, .CodeMirror, .CodeMirror *, .cm-editor, .cm-editor *, .monaco-editor, .monaco-editor *):style(font-family: "JetBrains Mono", monospace !important;)
```
## ChatGPT
```css
chatgpt.com##html:style(--font-family-sans: "Inter", sans-serif !important; --font-sans: "Inter", sans-serif !important; --font-family-mono: "JetBrains Mono", monospace !important; --font-mono: "JetBrains Mono", monospace !important; --type-code-font-family: "JetBrains Mono", monospace !important; font-family: "Inter", sans-serif !important;)
chatgpt.com##:is(body, button, input, textarea, select, option, [contenteditable="true"]):style(font-family: "Inter", sans-serif !important;)
chatgpt.com##:is(pre, pre *, code, code *, kbd, kbd *, samp, samp *, [class*="font-mono"], [class*="font-mono"] *, .monaco-editor, .monaco-editor *, .cm-editor, .cm-editor *):style(font-family: "JetBrains Mono", monospace !important;)
chatgpt.com##[class*="DilResponseRoot"]:style(font-family: "Inter", sans-serif !important;)
```
## Visual Studio Marketplace
``` css
marketplace.visualstudio.com##html:style(font-family: "Inter", sans-serif !important;)
marketplace.visualstudio.com##:is(body, body *):not(i, i *, .bowtie-icon, .bowtie-icon *, .vss-Icon, .vss-Icon *, [class*="verified-domain-icon"], [class*="verified-domain-icon"] *, [class*="ms-Icon"], [class*="ms-Icon"] *):style(font-family: "Inter", sans-serif !important;)
marketplace.visualstudio.com##html body :is(pre, pre *, code, code *, kbd, kbd *, samp, samp *, tt, tt *, .hljs, .hljs *, .highlight, .highlight *, .CodeMirror, .CodeMirror *, .cm-editor, .cm-editor *, .monaco-editor, .monaco-editor *):style(font-family: "JetBrains Mono", monospace !important;)
```
## Microsoft Learn
``` css
learn.microsoft.com##html:style(font-family: "Inter", sans-serif !important;)
learn.microsoft.com##:is(body, body *):not(.docon, .docon *):style(font-family: "Inter", sans-serif !important;)
learn.microsoft.com##html body :is(pre, pre *, code, code *, kbd, kbd *, samp, samp *, tt, tt *, .hljs, .hljs *, .highlight, .highlight *, .CodeMirror, .CodeMirror *, .cm-editor, .cm-editor *, .monaco-editor, .monaco-editor *):style(font-family: "JetBrains Mono", monospace !important;)
```
## HackerNews
``` css
news.ycombinator.com##html:style(font-family: "Inter", sans-serif !important;)
news.ycombinator.com##:is(body, body *):style(font-family: "Inter", sans-serif !important;)
news.ycombinator.com##html body :is(pre, pre *, code, code *, kbd, kbd *, samp, samp *, tt, tt *):style(font-family: "JetBrains Mono", monospace !important;)
```
## YouTube
```css
youtube.com##html:style(--font-family: "Inter", sans-serif !important; --font-family-narrow: "Inter", sans-serif !important; --display-font-family: "Inter", sans-serif !important; --display-font-family-narrow: "Inter", sans-serif !important; --yt-spec-font-family: "Inter", sans-serif !important; font-family: "Inter", sans-serif !important;)
youtube.com##:is(body, body *):style(font-family: "Inter", sans-serif !important;)
youtube-nocookie.com,youtube.com##.branding-img
```
