(window.webpackJsonp=window.webpackJsonp||[]).push([[161],{1088:function(e,t,o){var content=o(1215);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[e.i,content,""]]),content.locals&&(e.exports=content.locals);(0,o(6).default)("70bd2e93",content,!0,{sourceMap:!1})},1214:function(e,t,o){"use strict";o(1088)},1215:function(e,t,o){var r=o(5)(!1);r.push([e.i,".header__stay-on-top{position:relative;z-index:1500}.header__stay-on-top--fixed{position:fixed;top:0;width:100%;-webkit-backface-visibility:hidden;backface-visibility:hidden}@media (min-width:768px){.header__stay-on-top--fixed{width:100%;transform:translateY(-120px)}}@media (min-width:1200px){.header__stay-on-top--fixed.pageholder--centered.header__stay-on-top--article:not(.header__stay-on-top--visual){width:1200px;margin:0 auto;left:50%;transform:translateX(-50%)}}@media (min-width:1372px){.header__stay-on-top--fixed{transform:translateY(-136px)}.header__stay-on-top--fixed:not(.pageholder--centered):not(.header__stay-on-top--visual){min-width:1116px;max-width:1548px;padding-right:348px}}.header__stay-on-top--fixed.header__stay-on-top--scroll-down{transform:translateY(-56px)}@media (min-width:1200px){.header__stay-on-top.pageholder--centered.header__stay-on-top--article:not(.header__stay-on-top--visual){width:1200px;margin:0 auto}}.header__stay-on-top--transition{transition:transform .32s}@media (min-width:768px){.header__stay-on-top--transition{transition:none}}@media (min-width:768px){.header__stay-on-top--article{transform:none}}.header__stay-on-top--visual{min-width:auto;max-width:none;padding:0;position:fixed;width:100%}",""]),e.exports=r},527:function(e,t,o){"use strict";o.r(t);var r=o(16),n=o.n(r),d=o(7);const l={scroll:[],resize:[]};var h={name:"HeaderTop",data:()=>({border:!1,minHeight:56,transition:!0,onPosition:!1,disableFixedPosition:!1}),computed:{header:()=>({HEIGHT_FULL:136,HEIGHT_TABLET:120,HEIGHT_REDUCED:56}),isArticle(){return"Article"===this.$store.state.header.pageType},scrollDown(){const{delayedScrollUp:e,delayedScrollDown:t}=d.store;return 0!==window.scrollY&&(t||!t&&!e)},scrollUp:()=>d.store.delayedScrollUp,isMobileBreakpoint:()=>d.store.isMobileBreakpoint,isTabletBreakpoint:()=>d.store.isTabletBreakpoint,isLongformVisual(){return["longformvisual","advertisement-longformvisual"].includes(this.$store.state.metadata.layout)},fixed:()=>d.store.fixedHeader},mounted(){this.updateMinHeight(),l.scroll.push(this.updatePosition),l.resize.push(n()(this.updatePosition,250,{trailing:!0,leading:!0})),l.resize.push(n()(this.updateMinHeight,250,{trailing:!0,leading:!0})),Object.entries(l).forEach((function([e,t]){t.forEach((function(t){t(),window.addEventListener(e,t)}))}))},updated(){this.updatePosition(),this.updateMinHeight()},destroyed(){Object.entries(l).forEach((function([e,t]){t.forEach((t=>window.removeEventListener(e,t)))})),l.scroll=[],l.resize=[]},created(){this.isMobileBreakpoint&&this.isArticle?d.store.fixedHeader=!0:d.store.fixedHeader=!1},methods:{updateMinHeight(){return this.isMobileBreakpoint&&this.isArticle?this.minHeight=56:this.isMobileBreakpoint?this.minHeight=112:this.isArticle?this.minHeight=56:this.isTabletBreakpoint?this.minHeight=176:this.minHeight=192},updatePosition(){this.onPosition=this.$el.getBoundingClientRect().bottom<-56;const{pageYOffset:e}=window,t=this.$el.getBoundingClientRect().top;if(this.isMobileBreakpoint){const o=56;window.requestAnimationFrame((()=>{d.store.fixedHeader&&e<o||o+this.$el.offsetTop+4<e?this.transition=!0:this.transition=!1})),t<=0||t<-o&&!d.store.fixedHeader?d.store.fixedHeader=!0:(t>=o&&d.store.fixedHeader||e<this.$el.offsetTop)&&(d.store.fixedHeader=!1),this.isArticle||(!this.border&&o<=e&&(this.border=!0),this.border&&o>e&&(this.border=!1))}else{this.border&&(this.border=!1);let o=this.isTabletBreakpoint?this.header.HEIGHT_TABLET:this.header.HEIGHT_FULL;this.isArticle&&(o=0),0===e&&d.store.fixedHeader?d.store.fixedHeader=!1:t+o<0&&!d.store.fixedHeader?d.store.fixedHeader=!0:t+o>=0&&d.store.fixedHeader&&(d.store.fixedHeader=!1)}}}},c=(o(1214),o(1)),component=Object(c.a)(h,(function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("div",{staticClass:"header__stay-on-top--wrapper",style:{"min-height":e.minHeight+"px"}},[o("div",{staticClass:"header__stay-on-top",class:{"header__stay-on-top--fixed":!e.disableFixedPosition&&e.fixed&&(e.isArticle||!e.isMobileBreakpoint),"header__stay-on-top--article":e.isArticle,"header__stay-on-top--visual":e.isLongformVisual,"header__stay-on-top--scroll-down":e.isArticle&&e.isMobileBreakpoint&&e.scrollDown&&e.onPosition,"header__stay-on-top--transition":e.scrollUp||e.transition,"pageholder--centered":e.$store.getters.knownUser.adFree}},[e._t("default",null,{border:e.border})],2)])}),[],!1,null,null,null);t.default=component.exports}}]);