(() => {
 let code = null;
 /^Success/.test(document.title) && (code = function(params, name) {
  var result = null;
  return params.split("&").find((function(el) {
   var tmp = el.split("=");
   return tmp[0] === name && (result = decodeURIComponent(tmp[1]), !0);
  })), result;
 }(document.title.substr("Success ".length), "code"));
 chrome.runtime.sendMessage({
  id: "google-auth-code",
  code
 });
})();