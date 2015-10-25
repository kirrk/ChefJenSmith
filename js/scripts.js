$(document).ready(function () {
   // $(window).scroll(function () {
     //   var pxFromBottom = 120;
       // if ($(window).scrollTop() + $(window).height() > $(document).height() - pxFromBottom) {
         //   $('nav#social').fadeOut('slow');
       // } else {
         //   $('nav#social').fadeIn('2000');
        //}
    //});
});

$(document).ready(function () {
    var socialMedia = {
        facebook: 'https://www.facebook.com/jenifer.smith1',
        twitter: 'https://twitter.com/sweetchefgirl',
        linkedin: 'https://www.linkedin.com/profile/view?id=83649241',
        pinterest: 'http://www.pinterest.com/sweetchefgirl/'
    };

    var social = function () {
        var output = '<ul class="events"><li>special events<span>|</span></li><li>classes<span>|</span></li><li>consulting</li></ul>';
        output += '<ul id="social-bar">',
        socList = document.querySelectorAll('nav#social');

        for (var key in arguments[0]) {
            output += '<li><a href="' + socialMedia[key] + '">' +
                '<img src="images/' + key + '.png" alt="icon for ' + key + '">' +
                '</a></li>';
        }
        output += '</ul>';
        for (var i = socList.length - 1; i >= 0; i--) {
            socList[i].innerHTML = output;
        };
    }(socialMedia);

    $("#jenHeader_Image1").hide().delay(600).fadeIn(800);
    $("#jenHeader_NavigationMenu").hide().delay(1000).slideDown(700);
    $(".page-header, ul.services, #chefContactForm").hide().delay(500).fadeIn(500);
    //fade one by one
    $(".pop-up-1").hide().delay(700).fadeIn(700);
    $(".pop-up-2").hide().delay(1200).fadeIn(700);
    $(".pop-up-3").hide().delay(1700).fadeIn(700);

    $('nav#social ul#social-bar li').hover(function () {
        $(this).css('opacity', '.6');
    }, function () {
        $(this).css('opacity', '1');
    });
    
    //Home 
    $('div.left').hide();
    $('.circle-one, .pop-up-img-1').on('click', function () {
       $('div.left').slideToggle();
        setTimeout("$('div.left').slideUp();", 9000);
    });

    $('div.savory').hide();
    $('.circle-two, .pop-up-img-2').on('click', function () {
        $('div.savory').slideToggle();
        setTimeout("$('div.savory').slideUp();", 9000);
    });

    $('div.sweet').hide();
    $('.circle-three, .pop-up-img-3').on('click', function () {
        $('div.sweet').slideToggle();
        setTimeout("$('div.sweet').slideUp();", 9000);
    });

    $('.pop-up-1 , .pop-up-2, .pop-up-3').hover(function () {
        $(this).css('opacity', '.6');
    }, function() {
        $(this).css('opacity', '1');
    });

    //loop savory images
    var savoryLinks = {
        "items": [
            { "Homemade soup topped with fresh eggs": "/images/savory/savory_1.jpg" },
            { "Fresh garbanza beans": "images/savory/savory_2.jpg" },
            { "Fresh cobb salad": "images/savory/savory_3.jpg" },
            { "Bruschetta": "images/savory/savory_4.jpg" },
            { "Fresh Prawns": "images/savory/savory_5.jpg" }
        ]
    };
    var output = "";
    for (var i = 0; i <= savoryLinks.items.length; i++) {
        for (key in savoryLinks.items[i]) {
            if (savoryLinks.items[i].hasOwnProperty(key)) {
                output += "<div class='savory-item'>" + "<img src='" + savoryLinks.items[i][key] + "'" + "alt='" + key + "'" + "'/> ";
            }
        }
    }
    var savory = document.getElementById("savory");
    savory.innerHTML = output;
    //end savory loop

    //loop sweet images
    var sweetLinks = {
        "items": [
            { "Souffle": "/images/sweets/sweet_1.jpg" },
            { "Homemade ice cream": "/images/sweets/sweet_2.jpg" },
            { "Macaroons": "/images/sweets/sweet_3.jpg" },
            { "Fresh homemade doughnut": "/images/sweets/sweet_4.jpg" },
            { "Fresh peanut layered chocolates": "/images/sweets/sweet_5.jpg" }
        ]
    };
    var sweeoutput = "";
    for (var i = 0; i <= sweetLinks.items.length; i++) {
        for (key in sweetLinks.items[i]) {
            if (sweetLinks.items[i].hasOwnProperty(key)) {
                sweeoutput += "<div class='sweet-item'>" + "<img src='" + sweetLinks.items[i][key] + "'" + "alt='" + key + "'" + "'/>";
            }
        }
    }
    var sweet = document.getElementById("sweet");
    sweet.innerHTML = sweeoutput;
    //end sweet loop

    //scroll to divs
    $('.pop-up-1').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({ scrollTop: $('div.left').offset().top }, 500);
    });
    $('.pop-up-2').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({ scrollTop: $('div.savory').offset().top }, 500);
    });
    $('.pop-up-3').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({ scrollTop: $('div.sweet').offset().top }, 500);
    });


     //image gallery
    $('.gallery-item img.imageGal').hover (function () {
    $(this).addClass('borderGal');
      },  function () {
             $(this).removeClass('borderGal');
      }); 
      
      //mobile nav
      $('.mobile').click( function(event) {
          event.preventDefault();
          $('#jenHeader_NavigationMenu ul li a').css('display', 'block');
      });
      
 });
