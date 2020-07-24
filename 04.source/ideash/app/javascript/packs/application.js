// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("semantic-ui-sass")

// function lockScreen() {
//     /*
//      * 現在画面を覆い隠すためのDIVタグを作成する
//      */
//     var id = "lockId";
//     var divTag = $('<div />').attr("id", id);
//     /*
//      * スタイルを設定
//      */
//     divTag.css("z-index", "999")
//         .css("position", "absolute")
//         .css("top", "0px")
//         .css("left", "0px")
//         .css("right", "0px")
//         .css("bottom", "0px")
//         .css("background-color", "gray")
//         .css("opacity", "0.8");
//     /*
//      * BODYタグに作成したDIVタグを追加
//      */
//     $('body').append(divTag);
// }

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
