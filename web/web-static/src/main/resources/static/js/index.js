jQuery(function(){
    $(".lubctn li").css("width",$(".lubbox").width() + "px");
    $(window).resize(function(){
        $(".lubctn li").css("width",$(".lubbox").width() + "px");
    });

    var cli = true;
    $(".right_an").click(function(){
        if(cli==true){
            cli=false;
            $(".lubctn").animate({
                "margin-left":-$(".lubbox").width()+"px"
            },400,function(){
                $(".lubctn").css("margin-left","0");
                $(".lubctn").append($(".lubctn li:first"));
                cli=true;
            });
        }
    });
    $(".left_an").click(function(){
        if(cli==true){
            cli=false;
            $(".lubctn").prepend($(".lubctn li:last"));
            $(".lubctn").css("margin-left",-$(".lubbox").width()+"px");
            $(".lubctn").animate({
                "margin-left":"0"
            },400,function(){
                cli=true;
            });
        }
    });
    var zjd = setInterval(function(){
        $(".right_an").click();
    },5000);

    $(".lubbox > a").hover(function(){
        clearInterval(zjd);
    },function(){
        clearInterval(zjd);
        zjd = setInterval(function(){
            $(".right_an").click();
        },5000);
    });


    //鏂伴椈
    $(".right_b").click(function(){
        if(cli==true){
            cli=false;
            $(".huodbx").css("overflow","hidden");
            $(".zddul").animate({
                "margin-left":-$(".huodbx").width()+"px"
            },500,function(){
                $(".zddul").css("margin-left","0");
                $(".zddul").append($(".zddul li:first"));
                $(".zddul").append($(".zddul li:first"));
                $(".zddul").append($(".zddul li:first"));
                $(".zddul").append($(".zddul li:first"));
                cli=true;
                $(".huodbx").css("overflow","");
            });
        }
    });
    $(".left_b").click(function(){
        if(cli==true){
            cli=false;
            $(".huodbx").css("overflow","hidden");
            $(".zddul").prepend($(".zddul li:last"));
            $(".zddul").prepend($(".zddul li:last"));
            $(".zddul").prepend($(".zddul li:last"));
            $(".zddul").prepend($(".zddul li:last"));
            $(".zddul").css("margin-left",-$(".huodbx").width()+"px");
            $(".zddul").animate({
                "margin-left":"0"
            },500,function(){
                $(".huodbx").css("overflow","");
                cli=true;
            });
        }
    });



});