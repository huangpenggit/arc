var searchText = getUrlParam("searchText");
var pageNum = 1; //起始页
var isLastPage = false;
var searchArr = localStorage.getItem("searchText").split(',');
var hrefType = getUrlParam('hrefType');
$(function(){

    if(searchText != ""){
        $(".mallSearchList ul").html("");
        getSearchList(searchText)
        $(".mallSearch input").val(searchText);

    }

    //点击加载更多
    $(".pageCon a").on('click',function(){
        if(!isLastPage){
            pageNum ++;
            getSearchList(searchText)
            $(".mallSearch input").val(searchText);
        }
    });


    //返回
    $(".back").on('click',function(){
        window.location.href = "mallSearchList.html?hrefType="+hrefType;
    });

    $(".share i").on('click',function(){
        var active = $(this).hasClass('on');
        $(this).toggleClass('on');
        if(active){
            $(".mallSearchList").addClass("event").removeClass("odd");
        }else{
            $(".mallSearchList").addClass("odd").removeClass("event");
        }
    });

    //搜索框
    $(".mallSearch input").on('keypress',function(e) {
        var keycode = e.keyCode;
        var searchName = $(this).val();
        if(keycode=='13') {
            e.preventDefault();
            $(".commonHead h3").removeClass("active");
            //请求搜索接口  
            $(".mallSearchList ul").html("");
            pageNum = 1;
            isLastPage = false;
            var productName = $(this).val();
            getSearchList(productName);

            if(searchName){
                if(searchArr.indexOf(searchName) == -1){
                    searchArr.push(searchName);
                    localStorage.setItem('searchText',searchArr);
                }
            }

        }
    });


    $(".close i").on('click',function(){
        var str_appd = '';
        str_appd += '<div class="no-data">';
        str_appd += '<img src="img/mall/ic_no.png" />';
        str_appd += '<p>暂无数据</p>';
        str_appd += '</div>';
        $(".mallSearch input").val("");
        $(".mallSearchList ul").html(str_appd);
        $(".pageCon").hide();
    });


});



function getSearchList(productName){
    var data = {"page":{"pageNum":pageNum,"pageSize":10},"params":{"productName":productName}};
    $.ajax({
        type:"post",
        url: localUrl+"product/queryProductNameList",
        async: false,
        dataType : 'json',
        contentType: 'application/json',
        data:JSON.stringify(data),
        success:function(json){
            var result = json.result;
            var str_appd = '';
            if(result == "000000"){
                spinClose();

                //$(".mallSearchCon").hide();
                $(".mallSearchList").show();

                var searchLen = json.object.list.length;
                var searchList = json.object.list;
                var str_appd = '';

                if(searchLen>0){
                    $(".pageCon").show();
                    isLastPage = json.object.isLastPage;
                    if(isLastPage){
                        $(".pageCon a").html("没有更多数据");
                    }
                    $.each(searchList,function(i,v){
                        str_appd += '<li>';
                        str_appd += '<a href="mallDetail.html?productId='+v.productId+'&hrefType='+hrefType+'">';
                        str_appd += '<div class="mallSearchCon">';
                        str_appd += '<i><img src="'+v.coverImgUrl+'"></i>';
                        str_appd += '<div class="listBottom">';
                        str_appd += '<p><span>'+v.productName+'</span></p>';
                        str_appd += '<p class="explain">'+v.description+'</p>';
                        str_appd += '<p><label>投资  ¥ </label><em>'+fMc(v.inverstAmount)+'</em><label> 起</label></p>';

                        str_appd += '</div>';
                        str_appd += '</div>';
                        str_appd += '</a>';
                        str_appd += '</li>';
                    });
                    $(".mallSearchList ul").append(str_appd);
                }else{
                    str_appd += '<div class="no-data">';
                    str_appd += '<img src="img/mall/ic_no.png" />';
                    str_appd += '<p>抱歉，搜索商品不存在</p>';
                    str_appd += '</div>';
                    $(".mallSearchList ul").html(str_appd);
                }
            }else if(result == "100097"){
                spinClose();
                layer.open({
                    content: json.resultdesc,
                    btn: '确定',
                    yes:function(index){
                        godLogout();
                        layer.close(index);
                    }
                });
            }else{
                spinClose();
                layer.open({
                    content: json.resultdesc,
                    btn: '确定'
                });
                return false;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown){
            spinClose();
            /*layer.open({
               content: "系统错误"+errorThrown,
               btn: '确定'
            });*/
        }
    });
}