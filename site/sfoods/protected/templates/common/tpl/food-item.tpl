<script type="text/template" id="food-item-tpl">
    {@each list as item,index}
    <div class="food-item new-item">
        <div class="inner">
            <img src="${item.thumb}/thumb.jpg" />
            <h4>${item.name}</h4>
            <p class="price">￥${item.price}.00 / 份</p>
            <p>套餐包括：<br />${item.desc}</p>
            <div class="add-to-cart" data-id="${item.id}" data-count="1">放入餐车 1 份</div>
        </div>
    </div>
    {@/each}
</script>