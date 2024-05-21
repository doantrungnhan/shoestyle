<div id="carousel1_indicator" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <?php
        foreach ($banner as $index => $banners) {
            $activeClass = ($index == 0) ? 'active' : '';
            echo "<li data-target=\"#carousel1_indicator\" data-slide-to=\"$index\" class=\"$activeClass\"></li>";
        }
        ?>
    </ol>
    <div class="carousel-inner">
        <?php
        foreach ($banner as $index => $banners) {
            $activeClass = ($index == 0) ? 'active' : '';
            echo "<div class=\"carousel-item $activeClass\">";
            echo "<img class=\"d-block w-100\" src=\"$UPLOAD_URL/banners/{$banners['img']}\" alt=\"Slide $index\">";
            echo "</div>";
        }
        ?>
    </div>
    <a class="carousel-control-prev" href="#carousel1_indicator" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel1_indicator" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


