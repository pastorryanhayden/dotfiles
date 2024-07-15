"use strict";var g=Object.create;var i=Object.defineProperty;var w=Object.getOwnPropertyDescriptor;var S=Object.getOwnPropertyNames;var P=Object.getPrototypeOf,b=Object.prototype.hasOwnProperty;var x=(t,e)=>{for(var r in e)i(t,r,{get:e[r],enumerable:!0})},c=(t,e,r,s)=>{if(e&&typeof e=="object"||typeof e=="function")for(let n of S(e))!b.call(t,n)&&n!==r&&i(t,n,{get:()=>e[n],enumerable:!(s=w(e,n))||s.enumerable});return t};var F=(t,e,r)=>(r=t!=null?g(P(t)):{},c(e||!t||!t.__esModule?i(r,"default",{value:t,enumerable:!0}):r,t)),T=t=>c(i({},"__esModule",{value:!0}),t);var v={};x(v,{default:()=>h});module.exports=T(v);var d=F(require("path"));var o=require("@raycast/api"),f=require("child_process");var m=require("@raycast/api"),p=require("child_process"),u=(0,m.getPreferenceValues)().path,a=u!==""?u:"/usr/gnu/bin:/usr/local/bin:/bin:/usr/bin:.:/opt/homebrew/bin";function y(t){if(!!t.command)try{(0,p.execSync)(`zsh -l -c 'PATH=${a}:/opt/homebrew/bin ${t.command}'`)}catch(e){let r=!0;if(e.toString().split(`
`).forEach(n=>{console.log(n),n.search(/skipping changes for that screen/)&&(r=!1)}),r)throw new Error("Unknown")}}async function l(t){try{(0,f.execSync)(`zsh -l -c 'PATH=${a} displayplacer list'`)}catch{(0,o.showToast)({title:"Error",message:"Display Placer utility not detected on your system.",style:o.Toast.Style.Failure});return}let e=await(0,o.showToast)({style:o.Toast.Style.Animated,title:"Switching Display Settings..."}),r=JSON.parse((await o.LocalStorage.getItem("favorites"))?.toString()??"[]");if(console.log("myFavorites",r),!r)return;let s=r[t];if(!s){console.log("No favorite found at index",t),await e.hide(),(0,o.showToast)({title:"Error",message:"Favorite not found",style:o.Toast.Style.Failure});return}try{y(s)}catch{await e.hide(),(0,o.showToast)({title:"Error",message:"Display Placer not detected on your system. Please install to continue",style:o.Toast.Style.Failure});return}await(0,o.closeMainWindow)(),await e.hide()}async function h(){let t=parseInt(d.default.basename(__filename).replace("preset","").replace(".js",""))-1;return l(t),null}0&&(module.exports={});
