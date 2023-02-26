chrome.runtime.sendMessage({
 id: "get-ext-info"
}, (function(response) {
 if (!response) return;
 let html = document.documentElement;
 html.setAttribute("data-tr-component-path", `${response.product}.${response.brand}.${response.version}.${response.variant}`), 
 html.setAttribute("united-toolbar-brand", response.brand), html.setAttribute("united-toolbar-version", response.version), 
 html.setAttribute("united-toolbar-variant", response.variant);
 let code = `\n    window.addEventListener('message', function(event) {\n      if (event.data.type !== 'UI_EXT_HELLO') return;\n      event.source.postMessage({ type: 'UI_EXT_DETAILS', detail: ${JSON.stringify(JSON.stringify(response))} }, '*');\n    });\n  `;
 var script = document.createElement("script");
 script.textContent = code, (document.head || document.documentElement).appendChild(script);
}));