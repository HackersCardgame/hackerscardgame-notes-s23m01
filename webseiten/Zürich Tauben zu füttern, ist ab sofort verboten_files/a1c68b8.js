(window.webpackJsonp=window.webpackJsonp||[]).push([[52,366],{106:function(t,e,n){"use strict";n.r(e);var o=n(14),r=n(381),m=n(67),l=n(95);n.e(554).then(n.t.bind(null,1560,7)),n.e(546).then(n.t.bind(null,1405,7)),n.e(546).then(n.t.bind(null,1562,7)),n.e(546).then(n.t.bind(null,1563,7)),n.e(546).then(n.t.bind(null,1564,7)),n.e(546).then(n.t.bind(null,1406,7)),n.e(546).then(n.t.bind(null,1565,7)),n.e(546).then(n.t.bind(null,1566,7)),n.e(546).then(n.t.bind(null,1567,7));var c={name:"ArticleSharebox",components:{nzzLink:o.default,Bookmark:m.default,CommentsPreview:l.default},mixins:[r.a],props:{data:{type:Object,default:()=>({content:{}})}},data:function(){return{title:this.$store.state.metadata.title,nzzId:this.$store.state.metadata.nzzId,sharePos:"bottom"}},computed:{metadata(){return this.$store.getters.getMetadata},seodata(){return this.$store.getters.getSeoData},isMobile(){return this.$store.state.isMobile},showComments(){try{return this.$config.coralUrl&&this.$store.getters.featureCoralEnabled&&this.metadata.comments.showComments&&this.metadata.comments.confirmed}catch(t){return!1}},assetId(){const t=this.$store.state.metadata.nzzId.split(".");return t.length<1?t[0]:t[1]},shareLinks(){return this.$store.getters.articleShareLinks(this.$config)},hasPocket(){return this.$store.state.features.hasPocket},shareLabels(){return this.metadata.englishWorkarounds?{email:"Share via E-Mail",facebook:"Share on Facebook",twitter:"Share on Twitter",linkedin:"Share on LinkedIn",xing:"Share on Xing"}:{email:"E-Mail senden",facebook:"Auf Facebook teilen",twitter:"Auf Twitter teilen",linkedin:"Auf LinkedIn teilen",xing:"Auf Xing teilen"}}},methods:{openWindow:function(t,e,n=!0){let o={eventInfo:{eventName:"Social Media Interaction",eventAction:"share",eventPosition:"",eventValue:"",eventNonInteractive:!1,type:"social media",componentID:this.nzzId,componentName:this.title},category:{primaryCategory:"social shares",subCategory1:e,subCategory2:"article",subCategory3:this.sharePos}};window.dispatchEvent(new window.CustomEvent("tms:event:push",{detail:o})),"print"!==t||n||window.print(),n&&window.open(t,"","menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600")}}},_=(n(960),n(1)),component=Object(_.a)(c,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t.isRegioProduct?t._e():n("div",{staticClass:"sharebox"},[n("div",{staticClass:"sharebox__line"}),t._v(" "),n("ul",{staticClass:"sharebox__content"},[t.$store.state.features.myCompanion&&t.$store.state.bookmarkingReady?n("li",{staticClass:"sharebox__item sharebox__item--bookmark"},[n("Bookmark",{staticClass:"sharebox__link sharebox__link--bookmark",attrs:{item:t.metadata,"sub-type":t.metadata.layout,type:"article","sub-type2":"",position:"bottom"},scopedSlots:t._u([{key:"default",fn:function(){return[n("svgicon",{staticClass:"sharebox__icon--bookmark svg-bookmark",attrs:{color:"#000000",name:"nzz_bookmark",height:"16",width:"12"}})]},proxy:!0}],null,!1,3668859621)})],1):t._e(),t._v(" "),t.isMobile?t._e():n("li",{staticClass:"sharebox__item sharebox__item--print"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{title:"Drucken"},nativeOn:{click:function(e){return e.preventDefault(),t.openWindow("print","Print",!1)}}},[n("svgicon",{staticClass:"sharebox__icon--print svg-print",attrs:{name:"nzz_print",height:"18",width:"18",color:"#000000",fill:!1}})],1)],1),t._v(" "),n("li",{staticClass:"sharebox__item sharebox__item--email"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{url:t.shareLinks.email,title:t.shareLabels.email},nativeOn:{click:function(e){return e.stopPropagation(),t.openWindow("email","E-Mail",!1)}}},[n("svgicon",{staticClass:"sharebox__icon svg-mail",attrs:{height:"48",name:"ico_mail_48",width:"48",color:"r-#000000"}})],1)],1),t._v(" "),t.hasPocket?n("li",{staticClass:"sharebox__item sharebox__item--pocket",staticStyle:{display:"none"}},[n("nzzLink",{staticClass:"sharebox__link",attrs:{title:"Pocket"},nativeOn:{click:function(e){return e.stopPropagation(),t.openWindow(t.shareLinks.pocket,"Pocket")}}},[n("svgicon",{staticClass:"sharebox__icon svg-pocket",attrs:{height:"48",name:"pocket",width:"48",color:"r-#000000",fill:!1}})],1)],1):t._e(),t._v(" "),t.isMobile?n("li",{staticClass:"sharebox__item sharebox__item--wa"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{url:t.shareLinks.whatsapp,title:"WhatsApp"},nativeOn:{click:function(e){return e.preventDefault(),t.openWindow(t.shareLinks.whatsapp,"Whatsapp")}}},[n("svgicon",{staticClass:"sharebox__icon svg-whatsapp",attrs:{height:"48",name:"ico_whatsapp_48",width:"48",color:"#000000 #ffffff"}})],1)],1):t._e(),t._v(" "),n("li",{staticClass:"sharebox__item sharebox__item--fb"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{url:t.shareLinks.facebook,title:t.shareLabels.facebook},nativeOn:{click:function(e){return e.preventDefault(),t.openWindow(t.shareLinks.facebook,"Facebook")}}},[n("svgicon",{staticClass:"sharebox__icon svg-facebook",attrs:{height:"48",name:"ico_facebook_48",width:"48",color:"#000000"}})],1)],1),t._v(" "),n("li",{staticClass:"sharebox__item sharebox__item--twitter"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{url:t.shareLinks.twitter,title:t.shareLabels.twitter},nativeOn:{click:function(e){return e.preventDefault(),t.openWindow(t.shareLinks.twitter,"Twitter")}}},[n("svgicon",{staticClass:"sharebox__icon svg-twitter",attrs:{height:"48",name:"ico_twitter_48",width:"48",color:"#000000"}})],1)],1),t._v(" "),n("li",{staticClass:"sharebox__item sharebox__item--linkedin"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{url:t.shareLinks.linkedin,title:t.shareLabels.linkedin},nativeOn:{click:function(e){return e.preventDefault(),t.openWindow(t.shareLinks.linkedin,"Linkedin")}}},[n("svgicon",{staticClass:"sharebox__icon svg-linkedin",attrs:{height:"48",name:"ico_linkedin_48",width:"48",color:"#000000"}})],1)],1),t._v(" "),n("li",{staticClass:"sharebox__item sharebox__item--xing"},[n("nzzLink",{staticClass:"sharebox__link",attrs:{url:t.shareLinks.xing,title:t.shareLabels.xing},nativeOn:{click:function(e){return e.preventDefault(),t.openWindow(t.shareLinks.xing,"Xing")}}},[n("svgicon",{staticClass:"sharebox__icon svg-xing",attrs:{name:"ico_xing_48",color:"#000000",height:"48",width:"48"}})],1)],1)]),t._v(" "),n("div",{staticClass:"sharebox__line"})]),t._v(" "),t.showComments?n("CommentsPreview"):t._e()],1)}),[],!1,null,null,null);e.default=component.exports},874:function(t,e,n){var content=n(887);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(6).default)("2001f9ae",content,!0,{sourceMap:!1})},877:function(t,e,n){"use strict";n(874)},887:function(t,e,n){var o=n(5)(!1);o.push([t.i,".comments__button{display:block;width:100%;max-width:640px;margin:0 auto;padding:13px 0;font-weight:300;font-size:.875rem;line-height:1.375rem;font-family:nzz-sans-serif,Arial;text-align:center;color:var(--black);text-decoration:none;background-color:var(--white);border:1px solid var(--grayLight);cursor:pointer;transition:all .32s ease}.comments__button:hover{color:var(--white);background-color:var(--black);border-color:var(--black)}.comments__button:active{opacity:.6}.comments__button:focus{outline:none}.container__header-title+.comments__button{margin-top:24px}@media (min-width:768px){.container__header-title+.comments__button{margin-top:32px}}.comments__overlay{position:fixed;top:0;right:0;bottom:0;left:0;z-index:2147483647;width:100%;min-height:calc(100% - 15vw);margin-top:15vw;overflow-y:auto}@media (min-width:768px){.comments__overlay{left:auto;max-width:560px;margin:0;box-shadow:0 0 16px rgba(0,0,0,.16)}}.comments__background{position:fixed;top:0;right:0;bottom:0;left:0;z-index:13000;background-color:rgba(0,0,0,.4)}@media (min-width:768px){.comments__background{display:none}}.comments__transition-enter-active,.comments__transition-leave-active{transition:transform .3s cubic-bezier(.3,.25,.15,1)}.comments__transition-enter,.comments__transition-leave-to{transform:translateY(100%)}@media (min-width:768px){.comments__transition-enter,.comments__transition-leave-to{transform:translateX(100%)}}.comments__header{position:fixed;top:15vw;width:100%;padding:40px 24px 0;background-color:var(--overlayBackground)}@media (min-width:768px){.comments__header{top:0;padding:40px 40px 0}}.comments__title{height:56px;padding:12px 0;font-weight:500;font-size:1.125rem;line-height:1.5rem;font-family:nzz-sans-serif,Arial}.comments__content{margin-top:40px;padding:0;background-color:var(--overlayBackground)}@media (min-width:768px){.comments__content{padding:0 16px}}.dark-mode .comments__content>div{filter:invert(84%) hue-rotate(162deg) brightness(1.12)}.comments__main{position:relative;display:flex;flex-direction:column;width:100%;height:100%;background-color:var(--overlayBackground)}@media (min-width:768px){.comments__main{max-width:560px;margin-top:0}}.comments__close{position:fixed;top:15vw;right:0;padding:26px;background-color:transparent;border:none;cursor:pointer;transition:opacity .32s ease}@media (min-width:768px){.comments__close{top:0}}.comments__close:hover{opacity:.6}.comments__close:focus{background:none;outline:none}.comments__closeicon{display:block;stroke:var(--trueBlack)}.comments-item{max-width:640px;margin:0 auto;padding:24px 0;font-family:nzz-sans-serif,Arial}.comments-item+.comments-item{border-top:1px solid var(--grayLight)}.comments-item__header{display:flex;justify-content:space-between;width:100%;margin-bottom:16px;font-size:.75rem;line-height:1rem}.comments-item__header--left,.comments-item__header--right{display:flex}.comments-item__header--right{align-items:flex-end}.comments-item__author{font-weight:500}.comments-item__time{margin-left:8px;color:var(--grayMedium)}.comments-item__like{display:none;font-weight:500;color:var(--blueStrong)}@media (min-width:768px){.comments-item__like{display:block}}.comments-item__like--footer{display:block;margin-top:16px;font-size:.75rem;line-height:1rem}@media (min-width:768px){.comments-item__like--footer{display:none}}",""]),t.exports=o},916:function(t,e,n){var content=n(961);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,n(6).default)("3beae55b",content,!0,{sourceMap:!1})},95:function(t,e,n){"use strict";n.r(e);var o={name:"CommentsPreview",computed:{button(){return this.isAmp?{tag:"a",href:`${this.$store.state.seoData.canonical}#kommentare`}:{tag:"button"}},commentsCount(){try{return this.$store.state.metadata.comments.visibleCommentCount}catch(t){return console.log(t),0}},commentsFlag(){return 1===this.commentsCount?"1 Kommentar":`${this.commentsCount} Kommentare`},previewComments(){try{return(this.$store.state.metadata.comments.newestTopComments.slice(0,2)||[]).map(this.enhanceComment)}catch(t){return[]}}},mounted(){this.$store.getters.featureCoralEnabled&&this.$store.state.commenting&&this.$store.state.commenting.preopen&&this.$store.state.metadata.comments.confirmed&&this.openComments()},methods:{openComments(){this.$store.dispatch("setCommenting",!0)},enhanceComment(t){let e="";return t.like_count>0&&(e=t.like_count>1?"Empfehlungen":"Empfehlung"),{...t,likeLabel:e}}}},r=(n(877),n(1)),component=Object(r.a)(o,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"pageelement"},[n("div",{staticClass:"container container--comments"},[n("div",{staticClass:"container__header-title container__header-title--moretosubject"},[n("span",{staticClass:"container__header-text container__header-text--commenting container__header-text--commenting-preview"},[t._v("\n        "+t._s(t.commentsFlag)+"\n      ")])]),t._v(" "),t._l(t.previewComments,(function(e){return n("div",{key:""+e.author_name+e.created_at,staticClass:"comments-item"},[n("div",{staticClass:"comments-item__header"},[n("div",{staticClass:"comments-item__header--left"},[n("div",{staticClass:"comments-item__author"},[t._v("\n            "+t._s(e.author_name)+"\n          ")]),t._v(" "),n("div",{staticClass:"comments-item__time"},[n("timeago",{attrs:{datetime:e.created_at,"auto-update":60}})],1)]),t._v(" "),n("div",{staticClass:"comments-item__header--right"},[e.likeLabel?n("div",{staticClass:"comments-item__like"},[t._v("\n            "+t._s(e.like_count)+" "+t._s(e.likeLabel)+"\n          ")]):t._e()])]),t._v(" "),n("div",{staticClass:"comments-item__content"},[n("p",{staticClass:"comments-item__text"},[t._v("\n          "+t._s(e.text)+"\n        ")])]),t._v(" "),e.likeLabel?n("div",{staticClass:"comments-item__like comments-item__like--footer"},[t._v("\n        "+t._s(e.like_count)+" "+t._s(e.likeLabel)+"\n      ")]):t._e()])})),t._v(" "),n(t.button.tag,{tag:"component",staticClass:"comments__button comments__open",attrs:{href:t.button.href},on:{click:t.openComments}},[t._v("\n      Alle Kommentare anzeigen\n    ")])],2)])}),[],!1,null,null,null);e.default=component.exports},960:function(t,e,n){"use strict";n(916)},961:function(t,e,n){var o=n(5)(!1);o.push([t.i,".sharebox{display:flex;justify-content:center;align-items:center;max-width:640px;margin:40px auto;clear:both}@media (min-width:768px){.sharebox{margin:80px auto}}.sharebox .bookmark path{stroke:var(--black)}.sharebox__content{clear:both;height:56px;padding:0 16px;list-style:none;text-align:center}.sharebox__line{flex-grow:1;height:1px;background-color:var(--grayLight)}.sharebox__link{display:block;width:56px;height:56px}.sharebox__link--bookmark{margin:0;padding:0}.sharebox__link:hover{opacity:.6}.sharebox__item--share .sharebox__link:hover{opacity:1}.sharebox__icon{margin:4px}.sharebox__icon--print{margin:19px}.sharebox__icon--bookmark{margin:20px 22px}.sharebox__item{display:inline-block;width:56px;height:56px}@media (min-width:768px){.sharebox__item--wa{display:none}}.sharebox__item--linkedin,.sharebox__item--print,.sharebox__item--twitter,.sharebox__item--xing{display:none}@media (min-width:768px){.sharebox__item--linkedin,.sharebox__item--print,.sharebox__item--twitter,.sharebox__item--xing{display:inline-block}}.sharebox__item--pocket a{cursor:pointer}",""]),t.exports=o}}]);