

// 2 nút danh mục nổi bật
var swiperwish = new Swiper('.product-cate-swiper', {
    pagination: {
        el: '.product-cate-swiper .swiper-pagination',
        // cho phép chuyển sang nút tiếp theo
        clickable: true,
    },
    // autoplay: false,
    breakpoints: {
        // khi ở 300px thì hiển thị 1 slide và kc giữa các slide là 10px
        300: {
            slidesPerView: 1,
            spaceBetween: 10
        },
        500: {
            slidesPerView: 1,
            spaceBetween: 30
        },
        640: {
            slidesPerView: 2,
            spaceBetween: 30
        },
        768: {
            slidesPerView: 3,
            spaceBetween: 30
        },
        991: {
            slidesPerView: 3,
            spaceBetween: 30
        },
        1200: {
            slidesPerView: 4,
            spaceBetween: 30
        }
    }
});



//nút đánh giá

var swiper = new Swiper('.danhgia-slider', {
    // autoplay: false,
    pagination: {
        el: '.danhgia-slider .swiper-pagination',
        clickable: true,
    }
});
// lick nút thêm vào giỏ hàng hiện ra bảng nhỏ
let popupcartmobile = document.querySelector('.popup-cart-mobile');
document.querySelector('.btn-cart').onclick = () => {
    popupcartmobile.classList.toggle('active');
}