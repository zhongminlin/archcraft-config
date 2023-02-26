(() => {
 "use strict";
 var __webpack_modules__ = {
  7948: module => {
   module.exports = JSON.parse('{"leaderElection":{"nodes":{"ajbkijkglnbohanphphcjmndajokgkof":"chrome-1und1-oem","bcpgmoibbpdcfjagmoopdkhmfccndbmf":"chrome-gmx-beta","camnampocfohlcgbajligmemmabnljcm":"chrome-gmx-oem","gmlaikcblemalbfpfpcjembbmndlngai":"chrome-gmxcom-oem","imengckhgefjflnboepcpbibgaiflpkp":"chrome-webde-beta","jaogepninmlbinccpbiakcgiolijlllo":"chrome-webde-oem","lpebgcnlaohcgdfhbffjajlnpifdkllg":"chrome-mailcom-oem"}},"leader_election":{"nodes":{"ajbkijkglnbohanphphcjmndajokgkof":"chrome-1und1-oem","bcpgmoibbpdcfjagmoopdkhmfccndbmf":"chrome-gmx-beta","camnampocfohlcgbajligmemmabnljcm":"chrome-gmx-oem","gmlaikcblemalbfpfpcjembbmndlngai":"chrome-gmxcom-oem","imengckhgefjflnboepcpbibgaiflpkp":"chrome-webde-beta","jaogepninmlbinccpbiakcgiolijlllo":"chrome-webde-oem","lpebgcnlaohcgdfhbffjajlnpifdkllg":"chrome-mailcom-oem"}},"storeExtensionUrlPrefix":"https://chrome.google.com/webstore/detail/","brand":{"aib":{"pingURL":"https://wa.mail.com/metric/ca.gif?portal=mailcom&browser=chrome&_c=0","uninstallURL":"https://go.mail.com/tb/en-us/gc_uninstall_runonce?portal=mailcom&browser=chrome&_c=0"},"cm":{"searchURL":"https://go.mail.com/tb/en-us/gc_labelsearch?q="},"companion":{"feedURL":"https://dl.mail.com/backend/companions/chrome/companion.xml"},"companions":{"fgbhfbhfhcimlhlinbijooedfkijgmap":"nt"},"faviconURL":"https://s.uicdn.com/mailint/8.1259.0/assets/favicon.ico","hotnews":{"feedURL":"https://dl.mail.com/backend/chrome/hotnewsfeed-%LOCALE%.xml"},"login":{"name":"mail.com","provider":"mailcom","createAccountURLWeb":"https://go.mail.com/tb/en-us/gc_signup","forgotPasswordURL":"https://go.mail.com/tb/en-us/gc_help_password"},"searchReferrer":"https://search.mail.com/","feedbackURL":"https://go.mail.com/tb/en-us/gc_feedback","firstrunURL":"https://go.mail.com/tb/en-us/gc_runonce","helpURL":"https://go.mail.com/tb/en-us/gc_help","homepageURL":"https://go.mail.com/tb/en-us/gc_home","lastTabURL":"https://go.mail.com/tb/en-us/gc_lasttab","notFoundURL":"https://go.mail.com/tb/en-us/gc_search_404","privacyDetailsURL":"https://go.mail.com/tb/en-us/gc_usage_data","privacyURL":"https://go.mail.com/tb/login/gc_datenschutz","ratingURL":"https://go.mail.com/tb/gc_star_","redirectSearchURL":"https://go.mail.com/tb/en-us/gc_websearch","searchOnLogoutURL":"https://go.mail.com/tb/en-us/gc_logout","startpageHomepageURL":"https://go.mail.com/tb/en-us/gc_startpage_homepage","startpageURL":"https://go.mail.com/tb/en-us/gc_startpage","upgradeURL":"https://go.mail.com/tb/en-us/gc_addon","versionURL":"https://go.mail.com/tb/en-us/gc_version"}}');
  }
 }, __webpack_module_cache__ = {};
 function __webpack_require__(moduleId) {
  var cachedModule = __webpack_module_cache__[moduleId];
  if (void 0 !== cachedModule) return cachedModule.exports;
  var module = __webpack_module_cache__[moduleId] = {
   exports: {}
  };
  return __webpack_modules__[moduleId](module, module.exports, __webpack_require__), 
  module.exports;
 }
 (() => {
  const _data = __webpack_require__(7948), {brand, leaderElection, storeExtensionUrlPrefix} = _data;
  document.addEventListener("click", (function(event) {
   if (document.referrer !== brand.searchReferrer) return !0;
   let anchor = event.target.closest("a");
   return null != anchor ? (event.preventDefault(), chrome.runtime.sendMessage({
    id: "bta-open-tab",
    target: anchor.href
   }), !1) : void 0;
  }), !0);
 })();
})();