(window.webpackJsonp=window.webpackJsonp||[]).push([[158],{1139:function(e,t,r){var content=r(1292);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[e.i,content,""]]),content.locals&&(e.exports=content.locals);(0,r(6).default)("443444d2",content,!0,{sourceMap:!1})},1291:function(e,t,r){"use strict";r(1139)},1292:function(e,t,r){var n=r(5)(!1);n.push([e.i,'.breadcrumbs{display:none;align-items:center;padding-left:16px}@media (min-width:768px){.breadcrumbs{display:flex}}.breadcrumbs__item{height:24px}@media (min-width:768px){.breadcrumbs__item--first .header-button__label span{display:none}}@media (min-width:1372px){.breadcrumbs__item--first .header-button__label span{display:block}}.breadcrumbs__item--first .header-button__label:after{content:"...";display:block}@media (min-width:1372px){.breadcrumbs__item--first .header-button__label:after{display:none}}.breadcrumbs__icon{margin:0 16px 0 16.5px}.icon--caretright{display:none;transform:rotate(-90deg)}@media (min-width:768px){.icon--caretright{display:block}}',""]),e.exports=n},606:function(e,t,r){"use strict";r.r(t);var n={name:"Breadcrumbs",components:{HeaderButton:()=>r.e(24).then(r.bind(null,482))},computed:{isDE(){return this.$store.getters.isDE},origin(){return this.$config.clientBaseUrl},breadcrumbs(){let e={name:"Startseite",path:"/"};this.isDE&&this.$config.nzzGermanStartseite&&(e={name:this.$config.nzzGermanStartseite.name,path:this.$config.nzzGermanStartseite.path});const t=this.$store.state.metadata&&this.$store.state.metadata.breadcrumbs;if(!t)return[e];return[e,...t].slice(Math.max(0,t.length-2))}},head:()=>({})},d=(r(1291),r(1)),component=Object(d.a)(n,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"breadcrumbs"},[e.breadcrumbs[0]?r("HeaderButton",{staticClass:"breadcrumbs__item breadcrumbs__item--first",attrs:{"data-nzz-referrer":"breadcrumbLevel0",to:e.breadcrumbs[0].path}},[r("span",[e._v(e._s(e.breadcrumbs[0].name))])]):e._e(),e._v(" "),r("div",{staticClass:"breadcrumbs__icon"},[e.breadcrumbs[1]?r("svgicon",{staticClass:"icon--caretright",attrs:{"data-nzz-referrer":"breadcrumbLevel1",height:"6",name:"nzz_chevron",width:"12",color:"r-#000000"}}):e._e()],1),e._v(" "),e.breadcrumbs[1]?r("HeaderButton",{staticClass:"breadcrumbs__item",attrs:{"data-nzz-referrer":"breadcrumbLevel1",to:e.breadcrumbs[1].path}},[e._v("\n    "+e._s(e.breadcrumbs[1].name)+"\n  ")]):e._e()],1)}),[],!1,null,null,null);t.default=component.exports}}]);