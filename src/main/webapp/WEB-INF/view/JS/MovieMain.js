 $(function () {
            var n = 1
            $('.next').click(function () {
                n++
                if (n == 6) {
                    n = 1
                }
                $('p img').attr('src', 'img/mov' + n + '.jpg')
            })
            $('.prev').click(function () {
                n--
                if (n == 0) {
                    n = 5
                }
                $('p img').attr('src', 'img/mov' + n + '.jpg')
            })
        })

        $(function () {
            $("#ct1").on("click", function () {
                $('#Screening_playing').hide();
                $('.movie_list1').hide();
                $('#nowplaying').show();
                $('.movie_list').show();

            })
            $("#ct2").on("click", function () {

                $('#nowplaying').hide();
                $('.movie_list').hide();
                $('#Screening_playing').show();
                $('.movie_list1').show();

            })
        })