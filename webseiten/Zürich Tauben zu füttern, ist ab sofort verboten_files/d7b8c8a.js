(window.webpackJsonp=window.webpackJsonp||[]).push([[271],{1022:function(e,t,n){"use strict";var o=n(989),r=n(13),c=n(16),d=n.n(c);t.a={async mounted(){this.pageRedirects(),this.$store.commit("setPageHash",this.$route.hash);if(!Object(o.b)()&&this.$config.nzzGermanStartseite&&this.$route.path===this.$config.nzzGermanStartseite.path&&!this.$store.getters.knownUser.exists&&this.$store.state.c1headers["c1-country"]&&"de"!==this.$store.state.c1headers["c1-country"].toLowerCase())return await Object(o.c)({country:"de",snackbar:"chdetop"},this);Object(o.a)(this.$store,this.$config),this.$store.state.c1headers["c1-country"]&&"de"===this.$store.state.c1headers["c1-country"].toLowerCase()&&this.$config.nzzGermanStartseite&&"/"===this.$route.path&&(window.location.href=this.$config.nzzGermanStartseite.path);window.addEventListener("popstate",this.onPopstate),window.addEventListener("resize",this.setBodyMinHeightAuto),window.addEventListener("resize",this.setScrollBarWidth),this.setScrollBarWidth()},beforeDestroy(){window.removeEventListener("popstate",this.onPopstate),window.removeEventListener("resize",this.setBodyMinHeightAuto),window.removeEventListener("resize",this.setScrollBarWidth)},computed:{setBodyMinHeightAuto:()=>d()((()=>document.body.style.minHeight="auto"),1e3),setScrollBarWidth:()=>d()((()=>{const e=document.querySelector("#scrollbar-width"),style=`:root {--scrollbarWidth: ${window.innerWidth-window.document.body.offsetWidth}px;}`,t=`<style id="scrollbar-width" type="text/css">${style}</style>`;e?e.textContent=style:document.body.appendChild(document.createRange().createContextualFragment(t))}),1e3),url(){let e=window.location.href;return e.indexOf("#")&&(e=e.split("#")[0]),window.digitalData.user&&window.digitalData.user[0]&&window.digitalData.user[0].profile[0].attributes&&(e+=`-${window.digitalData.user[0].profile[0].attributes.c1.clientCountryCode}`,e+=`-${window.digitalData.user[0].profile[0].attributes.c1.clientRegionCode}`),e},nzzPageYOffset:()=>window.localStorage.getItem("nzzPageYOffset"),isNzzProduct:()=>Object(r.b)()},methods:{pageRedirects(){this.doRedirect&&(0===this.doRedirect.indexOf("http")?window.location=this.doRedirect:this.$router.replace(this.doRedirect))},pageDone(){window.deferred((()=>{window.dispatchEvent(new window.CustomEvent("tms:pageReady")),document.dispatchEvent(new window.CustomEvent("nzz:referring-element:update")),this.eventBus.$emit("pageDone")})),this.$store.commit("setPageProp",{key:"firstLoadDone",value:!0}),window.nzzRenderingPerformance||(window.nzzRenderingPerformance=!0,window.performance.mark("js.renderingNuxt.done")),window.nzzHistory||(this.isNzzProduct&&this.nzzPageYOffset&&this.restorePagePositionExp()?this.restorePagePosition():["/","/deutschland"].includes(this.$route.path)?this.scrollTo(0,0):this.onReload()),(this.$store.state.pageProps.isPopState||this.$store.state.pageProps.isGalleryClosed)&&this.scrollOnReload()},onReload(){if(!window.location.href.includes("content-table")&&!window.location.href.includes("subtitle"))try{const e=JSON.parse(this.nzzPageYOffset);if(e&&e[this.url]){const{offset:t=0,minHeight:n=0}=e[this.url];t&&this.scrollTo(0,t,n)}}catch(e){console.log(e)}},onPopstate(e){null!==e.state&&this.$store.commit("setPageProp",{key:"isPopState",value:!0})},scrollOnReload(){if(window.nzzHistory&&window.nzzHistory.flow.length>1){const e=window.nzzHistory.flow[window.nzzHistory.flow.length-2];e&&(window.digitalData.user&&window.digitalData.user[0]&&window.digitalData.user[0].profile.attributes?e.country===window.digitalData.user[0].profile[0].attributes.c1.clientCountryCode&&e.region===window.digitalData.user[0].profile[0].attributes.c1.clientRegionCode||this.scrollTo(0,0,0):this.scrollTo(0,e.fromTop,e.minHeight),this.$store.commit("setPageProp",{key:"isPopState",value:!1}),this.$store.commit("setPageProp",{key:"isGalleryClosed",value:!1}))}},scrollTo(e,t,n){this.$nextTick((()=>{const o=document.body.offsetHeight||0;document.body.style.minHeight=`${n&&n<=o?n:o}px`,setTimeout((()=>{window.scrollTo(e,t),window.dispatchEvent(new window.CustomEvent("pageScrolled"))}))}))},restorePagePosition(){try{const{minHeight:e=0,offset:t=0}=JSON.parse(this.nzzPageYOffset)[this.url];document.body.style.minHeight=`${e}px`,window.scrollTo(0,t),window.deferred((()=>{this.$nextTick((()=>{window.dispatchEvent(new window.CustomEvent("pageScrolled")),document.body.style.minHeight="auto"}))}))}catch(e){console.log(e)}},restorePagePositionExp(){try{const e=JSON.parse(this.nzzPageYOffset)[this.url];if(!e)return!1;const{created:t=""}=e;return new Date<=new Date(new Date(t).setMinutes(new Date(t).getMinutes()+10))}catch(e){return console.log(e),!1}}}}},1023:function(e){e.exports=JSON.parse('{"commit":"9468aa08ffe7d01b19a07cecee6c279a1b77fa01"}')},1150:function(e,t,n){"use strict";function o(component,e){var t;return 0===e&&(null==component||null===(t=component.identifier)||void 0===t?void 0:t.includes(".container--recommendations-exclusive"))}function r(e){!function(e){var t;null!==(t=e.state.header)&&void 0!==t&&t.articleColorSchema&&e.dispatch("setHeader",{key:"articleColorSchema",value:""})}(e),function(e){var t;null!==(t=e.state.header)&&void 0!==t&&t.transparent&&e.dispatch("setHeader",{key:"transparent",value:!1})}(e)}n.d(t,"b",(function(){return l})),n.d(t,"a",(function(){return m}));var c=n(13);const{commit:d}=n(1023);function l(e,{pageType:t,error:n,redirect:d,route:l,store:m,req:w,isRenditionMiddleware:f,$config:y}){if(e.data.redirect){const{redirect:n,code:code=302}=e.data;return{data:{},pagetype:t,doRedirect:n,isRenditionMiddleware:f}}if("ok"===e.data.status&&e.data.metadata){let n=!1;if("Article"===(t=e.data.docType)&&e.data.metadata.url!==l.path&&l.path.includes(e.data.metadata.nzzId)&&-1===l.path.indexOf("/amp/")&&-1===l.path.indexOf("/webview")){window.localStorage.setItem("doRedirect",!0);const t=["ga","mktcid","mktcval","kid","trco","lp","intpro","reduced","gschnk","exprmnt","topicindex"],o=Object.keys(l.query).map((e=>{if(l.query[e]&&t.includes(e))return`${encodeURIComponent(e)}=${encodeURIComponent(l.query[e])}`})).join("&");let r=e.data.metadata.url;o.length>2&&(r=`${r}?${o}`),n=r}if(m.state.features.c1&&e.headers)for(const t in e.headers)t.toLowerCase().includes("c1")&&m.commit("setC1Header",{key:t.toLowerCase(),data:e.headers[t]});e.headers&&e.headers.ykey&&m.commit("setC1Header",{key:"ykey",data:e.headers.ykey}),e.data.seoData&&e.data.seoData.renderedAt&&m.commit("setC1Header",{key:"lastmodified",data:e.data.seoData.renderedAt}),e.data.seoData&&(m.commit("setMutation",{key:"seoData",value:{...e.data.seoData}}),e.data.seoData.canonical=e.data.seoData.canonical.replace(/\/$/,""));let c=e.data.metadata.flag&&"live"===e.data.metadata.flag.toLowerCase();c||(c=e.data.metadata.indicator&&"live"===e.data.metadata.indicator.toLowerCase());{if(e.data.content){let header=e.data.content[0];if(header&&header.nextElement&&header.nextElement.includes("header")&&(header=e.data.content[1]),header&&header.styles){const e=header.styles;e&&e["header-highlight"]?m.commit("setBehindHeader",e["header-highlight"]):m.commit("setBehindHeader",!1)}else m.commit("setBehindHeader",!1)}const n=function(data,e){var t;let n={};var r,component,c;if(e)n=null===(r=data.metadata)||void 0===r?void 0:r.articleStyles;else if(null!==(t=data.content)&&void 0!==t&&t.find(o)){var d,l,h,m,w,f,y;n=null===(d=data.content[0])||void 0===d||null===(l=d.containers["widget-row-area"][0])||void 0===l||null===(h=l.containers["widget-area"][0])||void 0===h||null===(m=h.content)||void 0===m||null===(w=m.list)||void 0===w||null===(f=w.articles[0])||void 0===f||null===(y=f.metadata)||void 0===y?void 0:y.articleStyles}else{const e=(null==(component=data)||null===(c=component.identifier)||void 0===c?void 0:c.includes(".widget--3of3-top"))?"article-embed-top":function(component){var e;return null==component||null===(e=component.identifier)||void 0===e?void 0:e.includes(".widget--3of3-article")}(data)?"article-embed-gross":null;var v,$,z,k,P;e&&(n=null===(v=data.containers)||void 0===v||null===($=v.articles[0])||void 0===$||null===(z=$.content[e])||void 0===z||null===(k=z.article)||void 0===k||null===(P=k.metadata)||void 0===P?void 0:P.articleStyles)}return n&&Object.keys(n).length?n:null}(e.data,"Article"===t);n?function(e,t){const n=e.articleColorSchema;n?(t.dispatch("setHeader",{key:"transparent",value:!0}),t.dispatch("setHeader",{key:"articleColorSchema",value:n})):r(t)}(n,m):r(m)}0,e.data.weather&&m.commit("setHeader",{key:"weather",value:{...e.data.weather}});const{isReduced:d=!1}=e.data;m.commit("setMutation",{key:"isReducedArticle",value:d}),m.commit("setWebAlert",{key:"breaking",value:e.data.breakingNews}),m.commit("setMutation",{key:"startseiteFeed",value:e.data.startseiteFeed}),m.commit("setMutation",{key:"commentsCount",value:e.data.commentsCount}),m.commit("setMutation",{key:"matchCards",value:e.data.matchCards});try{m.commit("setWebAlert",{key:"info",value:JSON.parse(e.data.features.webAlertInfo)})}catch(e){}try{m.commit("setPageProp",{key:"tmsPageType",value:e.data.digitalData.page.category.pageType})}catch(e){}if(f&&w.originalUrl.includes(`/${f}/`)&&w.app.get("config").ssr[f])return m.state.rendition.config=w.app.get("config").ssr[f],"amp"===f&&(m.state.rendition.digitalDataAmp=e.data.digitalDataAmp),{data:e.data,pagetype:t,doRedirect:n,isRenditionMiddleware:f};const y=h(e.data.content,"content");return m.commit("resetTeaserCount",{value:y}),{data:e.data,pagetype:t,doRedirect:n,isRenditionMiddleware:f}}m.commit("setHeader",{key:"pageType",value:"error"}),"webview2"===f&&("nzz"===y.product?d("302",`/${f}/startseite`):Object(c.c)()&&d("302",`/${y.product}/${f}/startseite_${y.defaultRegion}`)),n({statusCode:404,message:"Seite nicht gefunden",isMobile:e.headers["x-ua-device"]})}function h(data,e){return"nzzId"===e?1:"string"==typeof data?0:Array.isArray(data)?data.reduce(((t,n)=>t+h(n,e)),0):data?Object.keys(data).reduce(((e,t)=>e+h(data[t],t)),0):0}function m(e={}){const t={req:!1,route:!1,pageType:"Article",isMobile:!1,$config:{},...e};let n=Object(c.c)()?`startseite_${t.$config.defaultRegion}`:"startseite",o=!1;if(e.store.state.c1headers&&(t.$config.hasRegioSwitch&&e.store.state.c1headers["c1-region"]&&(n=`startseite_${e.store.state.c1headers["c1-region"].toLowerCase()}`),e.store.state.c1headers["c1-country"]&&"de"===e.store.state.c1headers["c1-country"].toLowerCase()&&t.$config.nzzGermanStartseite&&(n=t.$config.nzzGermanStartseite.homeSlug,o=!0),t.$config.nzzGermanStartseite&&t.$config.nzzGermanStartseite.path===t.route.path&&(n=t.$config.nzzGermanStartseite.homeSlug)),t.route&&["/","/deutschland"].includes(t.route.path)){const e=Object.keys(t.route.query).map((e=>e+"="+t.route.query[e])).join("&");t.route.fullPath=`/${n}${e?`?${e}`:""}`}const r=t.route.fullPath.indexOf("#")>-1?t.route.fullPath.split("#")[0]:t.route.fullPath,l="/api/v1"+encodeURI(r),h={reduced:void 0,device:void 0,version:d};if("Article"===t.pageType){const{reduced:e=!1}=t.req?t.req.query:{};e&&-1===l.indexOf("?reduced=")&&-1===l.indexOf("&reduced=")&&(h.reduced=e),t.route&&"/briefing"===t.route.path&&o&&(h.intl=!0)}t.store&&"dynamicregwalls"===t.store.state.thunderPreview&&(h.reduced=!0),t.isMobile&&(h.device="mobile");const m=-1===l.indexOf("?")?"?":"&";return l+m+Object.entries(h).filter((([,e])=>void 0!==e)).map((([e,t])=>`${e}=${t}`)).join("&")}},1377:function(e,t,n){var map={"./amp/components/_Article":[1374,3,1,2,4,0,343],"./amp/components/_Article.vue":[1374,3,1,2,4,0,343],"./webview2/components/_Article":[1375,344],"./webview2/components/_Article.vue":[1375,344],"./webview2/components/_Page":[1376,345],"./webview2/components/_Page.vue":[1376,345]};function o(e){if(!n.o(map,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=map[e],o=t[0];return Promise.all(t.slice(1).map(n.e)).then((function(){return n(o)}))}o.keys=function(){return Object.keys(map)},o.id=1377,e.exports=o},1609:function(e,t,n){"use strict";n.r(t);var o=n(8),r=n.n(o),c=n(15),head=n(388),d=n(1022),l=n(1150),h=n(390),m=n(453),w=n(13);function f(){}var y={layout:data=>{if(data.isRenditionMiddleware)return data.isRenditionMiddleware;let e="default";return"Page"===data.pageType&&data.route.meta&&data.route.meta.map((t=>{t&&t.layout&&(e=t.layout)})),e},mixins:[head.a,d.a],data:()=>({pagetype:"",data:{}}),computed:{isHome(){return!!["/","/deutschland"].includes(this.$route.path)}},async asyncData(e){const{isMobile:t,pageType:n="Page",app:o,req:d,route:h,store:y,$config:v}=e,$=Object(l.a)({req:d,store:y,route:h,pageType:n,isMobile:t,$config:v});try{var z;const t=await o.$kenny({...Object(c.a)(v.kennyBasicAuth),headers:d?d.headers:null,url:$}).then((t=>Object(l.b)(t,e))).catch((e=>console.log({error:e}))),{digitalData:n,content:content,webviewMetadata:O,btaFeed:C,btaAuthorFeed:S}=t?t.data:{};content&&content[0]&&h.meta&&h.meta[0]&&void 0!==h.meta[0].forcePageComponent&&(content[0].identifier=h.meta[0].forcePageComponent);const A="webview2"===y.state.isrendition;if(y.state.features.bta&&n&&n.component.length&&"article"===n.component[0].category.componentType){var k,P;let e={moreToSubject:(null==C||null===(k=C.data)||void 0===k?void 0:k.length)>0?C:null,sameAuthor:(null==S||null===(P=S.data)||void 0===P?void 0:P.length)>0?S:null,newestArticles:{ch:void 0,de:void 0}};const t=[];t.push(r()({...Object(c.a)(v.enricoBasicAuth),url:`${v.enricoBase.replace("v1","v2")}/newest-articles`,params:{product:v.product,limit:6}}).then((({data:data})=>{var t;e.newestArticles.ch=null!=data&&null!==(t=data.data)&&void 0!==t&&t.length?data.data:null})).catch(f)),t.push(r()({...Object(c.a)(v.enricoBasicAuth),url:`${v.enricoBase.replace("v1","v2")}/newest-articles`,params:{product:v.product,limit:6,customFilter:"de"}}).then((({data:data})=>{var t;e.newestArticles.de=null!=data&&null!==(t=data.data)&&void 0!==t&&t.length?data.data:null})).catch(f)),await Promise.all(t),y.commit("setMutation",{key:"BTAitems",value:e})}if(n&&A&&"home"===n.page.category.pageType){var R={newestArticles:{ch:void 0,de:void 0},briefing:void 0,briefingIntl:void 0};const e=[];e.push(r()({...Object(c.a)(v.enricoBasicAuth),url:`${v.enricoBase.replace("v1","v2")}/newest-articles`,params:{product:v.product,limit:3}}).then((({data:data})=>{var e;R.newestArticles.ch=(null==data||null===(e=data.data)||void 0===e?void 0:e.map((e=>e.metadata)))||[]})).catch(f)),e.push(r()({...Object(c.a)(v.enricoBasicAuth),url:`${v.enricoBase.replace("v1","v2")}/newest-articles`,params:{product:v.product,limit:3,customFilter:"de"}}).then((({data:data})=>{var e;R.newestArticles.de=(null==data||null===(e=data.data)||void 0===e?void 0:e.map((e=>e.metadata)))||[]})).catch(f)),e.push(r()({...Object(c.a)(v.enricoBasicAuth),url:`${v.enricoBase.replace("v1","v2")}/briefing`,params:{product:v.product}}).then((({data:data={}})=>{var e;R.briefing=null===(e=data.data)||void 0===e?void 0:e.map((e=>e.metadata))})).catch(f));const t=`${v.enricoBase.replace("v1","v2")}/briefing-intl`;e.push(r()({...Object(c.a)(v.enricoBasicAuth),url:t,params:{product:v.product}}).then((({data:data={}})=>{var e;R.briefingIntl=null===(e=data.data)||void 0===e?void 0:e.map((e=>e.metadata))})).catch(f)),await Promise.all(e),y.commit("setMutation",{key:"smartTeaser",value:R})}const D=(null==O?void 0:O.logos)||(null===(z=y.state.metadata)||void 0===z?void 0:z.logos)||null;return D&&await Promise.all(D.map((e=>Object(m.a)(e,null,Object(w.c)()?16:"nzzas"===e?22:24,y)))),A||(t.data.mp3=Boolean(t.data.mp3)),y.commit("setMutation",{key:"audio",value:t.data.mp3}),t}catch(e){console.log(`error page: ${$}`)}},head(){const e=this.setHeadMeta(this.data,this.pagetype,this.isRendition);return e.script&&!this.isAmp&&e.script.push({hid:"market-iframe-listener",type:"text/javascript",preserve:"preserve",innerHTML:"\n        window.addEventListener('message', function(message) {\n            if (message.data.frame) {\n              try {\n                let frame = document.getElementById(message.data.frame);\n                if (frame) {\n                  frame.style.height = message.data.h + 'px';\n                }\n              } catch (e) {\n                console.log(e)\n              }\n            }\n            if (message.data.url) {\n              try {\n                let url = message.data.url;\n                if (url) {\n                  window.location.href = url;\n                }\n              } catch (e) {\n                console.log(e)\n              }\n            }\n          });\n        "}),e},async mounted(){if(window.addEventListener("click",this.onClick),window.addEventListener("kenny:reload",this.reload),window.localStorage&&window.localStorage.setItem("crossReferringUrl",JSON.stringify({url:window.location.href,time:Date.now()})),this.$config.hasRegioSwitch&&Object(h.b)(this.$store),this.isRegioProduct&&Object(h.a)(this.$store),this.data.mp3&&this.$store.getters.knownUser.exists)try{const{data:data}=await r.a.request({...Object(c.a)(this.$config.enricoBasicAuth),url:`${this.$config.enricoC1Base}/tts-audio`,withCredentials:!0,params:{product:this.$config.product,articleid:this.$store.state.metadata.nzzId,revisionid:this.$store.state.metadata.currentRevisionId}});data.url&&this.$store.commit("setMutation",{key:"audio",value:data.url})}catch(e){}},destroyed(){window.removeEventListener("click",this.onClick),window.removeEventListener("kenny:reload",this.reload)},methods:{pageComponent(){const e=this.pagetype?this.pagetype:"Page";return this.isRendition?n(1377)(`./${this.isRendition}/components/_${e}`):"Page"===e?"Page":"ArticleComponent"},async onClick(e){const{target:t}=e;if(t&&t.href&&t.href.includes(this.$config.clientBaseUrl)){const{altKey:n,ctrlKey:o,metaKey:r,shiftKey:c,button:button,defaultPrevented:d}=e;if(r||n||o||c)return;if(d)return;if(void 0!==button&&0!==button)return;if(t&&t.getAttribute){const e=t.getAttribute("target");if(/\b_blank\b/i.test(e))return}const l=new URL(t.href);if("#kommentare"===l.hash)return;const h=l.pathname;window.location.pathname!==h&&e.preventDefault&&(e.preventDefault(),this.$router.push(h))}},reload(){if(this.isHome){const e=document.querySelector(".nzz-page-transition");e&&e.classList.add("nzz-page-leave")}const e=Object(l.a)({store:this.$store,route:{...this.$route},pageType:this.$store.state.header.pageType,isMobile:this.$store.state.isMobile,$config:this.$config});this.$kenny({...Object(c.a)(this.$config.kennyBasicAuth),url:e}).then((e=>{e.data?(window.nzzRetryFetch=0,this.isHome&&(window.scrollTo(0,0),setTimeout((()=>{const e=document.querySelector(".nzz-page-transition");e&&e.classList.remove("nzz-page-leave")}),200)),this.data=e.data):!window.nzzRetryFetch||window.nzzRetryFetch<10?(window.nzzRetryFetch=window.nzzRetryFetch?window.nzzRetryFetch+1:1,setTimeout((()=>window.dispatchEvent(new window.CustomEvent("kenny:reload"))),2e3)):this.$router.push("/error")})).catch((e=>{!window.nzzRetryFetch||window.nzzRetryFetch<10?(window.nzzRetryFetch=window.nzzRetryFetch?window.nzzRetryFetch+1:1,setTimeout((()=>window.dispatchEvent(new window.CustomEvent("kenny:reload"))),4e3)):(console.log(e),this.$router.push("/error"))}))}}},v=n(1),component=Object(v.a)(y,(function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",[e.isRendition||"Article"!==e.pagetype?e.isRendition?n(e.pageComponent,{key:e.isRendition+"-"+e.pagetype,tag:"component",attrs:{data:e.data,isarticle:"Article"===e.pagetype,ispage:"Article"!==e.pagetype,pagetype:e.pagetype},on:{pagedone:e.pageDone}}):n("Page",{key:"page-"+e.isRendition,attrs:{data:e.data,ispage:!0,pagetype:e.pagetype},on:{pagedone:e.pageDone}}):n("ArticleComponent",{key:"article-"+e.isRendition,attrs:{data:e.data,isarticle:!0,pagetype:e.pagetype},on:{pagedone:e.pageDone}})],1)}),[],!1,null,null,null);t.default=component.exports},989:function(e,t,n){"use strict";n.d(t,"b",(function(){return d})),n.d(t,"a",(function(){return l})),n.d(t,"c",(function(){return h}));var o=n(9),r=n(382);const c={chde:{snackbar:"dech",country:"ch"},dech:{snackbar:"chde",country:"de"},chdetop:{snackbar:"dechtop",country:"ch"},dechtop:{snackbar:"chdetop",country:"de"}};function d(){return o.snackbarStore.get()}function l(e,t){const n=o.snackbarStore.get();n&&(e.dispatch("triggerNewAction",{hash:n,backaction:()=>h(c[n],{$config:t})}),o.snackbarStore.remove())}async function h({country:e,snackbar:t},{$config:n={}}){await Object(r.d)("country",e,n),o.snackbarStore.save(t),window.location.href="de"===e?n.nzzGermanStartseite.path:"/"}}}]);