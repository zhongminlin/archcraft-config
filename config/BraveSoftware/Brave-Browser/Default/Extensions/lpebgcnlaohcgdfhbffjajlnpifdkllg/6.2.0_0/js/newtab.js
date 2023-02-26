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
  const _data = __webpack_require__(7948), {brand: config_brand, leaderElection, storeExtensionUrlPrefix} = _data;
  function Exception(msg) {
   this._message = msg;
   try {
    dummy.to.provoke.a.native.exception += 1;
   } catch (e) {
    this.stack = e.stack;
   }
  }
  function NotReached(msg) {
   Exception.call(this, msg);
  }
  function UserError(msg) {
   Exception.call(this, msg), this.causedByUser = !0;
  }
  function Abortable() {}
  function TimeoutAbortable(setTimeoutID) {
   this._id = setTimeoutID;
  }
  function IntervalAbortable(setIntervalID) {
   this._id = setIntervalID;
  }
  function SuccessiveAbortable() {
   this._current = null;
  }
  function extend(child, supertype) {
   var properties = Object.create(null);
   Object.getOwnPropertyNames(child.prototype).forEach((function(key) {
    properties[key] = Object.getOwnPropertyDescriptor(child.prototype, key);
   })), child.prototype = Object.create(supertype.prototype, properties);
  }
  function assert(test, errorMsg) {
  }
  Exception.prototype = {
   get message() {
    return this._message;
   },
   set message(msg) {
    this._message = msg;
   },
   toString: function() {
    return this._message;
   }
  }, extend(NotReached, Exception), UserError.prototype = {}, extend(UserError, Exception), 
  Abortable.prototype = {
   cancel: function() {}
  }, TimeoutAbortable.prototype = {
   cancel: function() {
    clearTimeout(this._id);
   }
  }, extend(TimeoutAbortable, Abortable), IntervalAbortable.prototype = {
   cancel: function() {
    clearInterval(this._id);
   }
  }, extend(IntervalAbortable, Abortable), SuccessiveAbortable.prototype = {
   set current(abortable) {
    assert(abortable instanceof Abortable || null == abortable, "need an Abortable object (or null)"), 
    this._current = abortable;
   },
   get current() {
    return this._current;
   },
   cancel: function() {
    this._current && this._current.cancel();
   }
  }, extend(SuccessiveAbortable, Abortable);
  document.addEventListener("DOMContentLoaded", (function(event) {
   var url;
   document.getElementById("ntf").src = (url = config_brand.newtabURL) || url;
  }));
 })();
})();