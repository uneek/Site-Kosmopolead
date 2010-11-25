// Apply Javascript overrides here. This file will not be updated by Radiant
//
//function FCKeditor_OnComplete( editorInstance )
//{
//    editorInstance.Events.AttachEvent( 'OnAfterSetHTML', FCKeditor_AfterSetHTML(editorInstance) ) ;
//}
//
//function FCKeditor_AfterSetHTML( editorInstance )
//{
//    alert('HTML Set');
//    editorInstance.Events.AttachEvent( 'OnPaste', TranslateTags(editorInstance) ) ;
//}
//
//
//function TranslateTags( editorInstance )
//{
//   editorInstance
//}


//$(function(){
//    alert('blabla');
//    $$('#xEditingArea').each(function(box){
//        if (!box.hasClassName('droppable')) {
//          Droppables.add(box, {
//            accept: 'asset',
//            onDrop: function(element) {
//               alert('entrée');
//               var part = "";
////
////              for(var i = 0; i< tabs.length; i++){
////                  if(tabs.){
////                      part = tabs.item(i).firstChild.textContent;
////                  }
////              }
//
//              alert(part);
//              var oEditor = FCKeditorAPI.GetInstance('part_'+part+'_content');
//              
//              //Form.Element.focus(box);
//                    if(!!document.selection){
//                            alert('bla1');
//                            oEditor.InsertHTML(tag)
//                            //box.focus();
//                            //var range = (box.range) ? box.range : document.selection.createRange();
//                            //range.text = tag;
//                            //range.select();
//                    }else if(!!box.setSelectionRange){
//                            alert('bla2');
//                            oEditor.InsertHTML(tag)
//    //        		var selection_start = box.selectionStart;
//    //        		box.value = box.value.substring(0,selection_start) + tag + box.value.substring(box.selectionEnd);
//    //        		box.setSelectionRange(selection_start + tag.length,selection_start + tag.length);
//                    }
//                    box.focus();
//            }
//          });
//            box.addClassName('droppable');
//        }
//      });
//});

Droppables.add(
    'part-dossier_de_presse', {
        onDrop:function(element, dropon){
            alert('pouet');
            var link = element.select('a.bucket_link')[0];
            var asset_id = element.id.split('_').last();
            var classes = element.className.split(' ');
            var tag_type = classes[0];
            var tag = '<r:assets:' + tag_type + ' id="' + asset_id + '" size="original" />';
            FCKeditorAPI.GetInstance('part_dossier_de_presse').InsertHtml(tag);
        }
    });