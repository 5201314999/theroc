{% include "common/seo.volt" %}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="{{keywords}}">
    <meta name="description" content="{{description}}">
    <title>{{title}}</title>
    <!-- element ui -->
    <link rel="stylesheet" href="/plugin/element-ui/lib/theme-default/index.css">
    <!-- private -->
    <link rel="stylesheet" href="/frontend/css/pages/contact.css" >
</head>
<body>
    <div id="contact">
        <!--头部导航栏-->
        {% include "smart/topBar.volt" %}
        <div id="contact_main" v-cloak>
            <h1>Contact Us</h1>
            <p>Whatever your question, we’re here to help.</p>
            <div class="contantUs">
                <div class="emailUs">
                    <h4>email us</h4>
                    <p>245452530@qq.com</p>
                </div>
                <div class="callUs">
                    <h4>call us</h4>
                    <p>13560455672</p>
                </div>
            </div>
        </div>
        <!--底部-->
        {% include "smart/footer.volt" %}
    </div>
    <!-- vue -->
    <script type="text/javascript" src="/plugin/vue.js"></script>
    <script type="text/javascript" src="/plugin/vue-resource/dist/vue-resource.js"></script>
    <!-- element ui -->
    <script type="text/javascript" src="/plugin/element-ui/lib/index.js"></script>
    <!-- private -->
    <script type="text/javascript" src="/frontend/js/common/common.js"></script>
    <script type="text/javascript" src="/frontend/js/pages/contact.js"></script>
</body>
</html>