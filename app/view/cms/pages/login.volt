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
    <link rel="stylesheet" href="/frontend/css/pages/login.css">
</head>
<body>
    <div id="login">
        <!--头部导航栏-->
        {% include "smart/topBar.volt" %}
        <div id="login_main" v-cloak>
            <div class="login_box">
                <h3 class="welcome">Welcome</h3>
                <ul>
                    <li class="clearfix li1">
                        <span class="form-td">
                            <img class="username-icon" src="/images/user.png">
                        </span>
                        <span class="line form-td"></span>
                        <input type="email" class="form-td username" v-model="email" placeholder="Email Address">
                    </li>
                    <li class="clearfix li2">
                        <span class="form-td">
                             <img class="password-icon" src="/images/password.png">
                        </span>
                        <span class="line form-td"></span>
                        <input type="password" class="form-td" v-model="password" placeholder="Password">
                    </li>
                    <li class="clearfix li3">
                        <span><a class="form-td" href="javaScript:void(0)" @click="forgetPassword()">Forget your password?</a></span>
                    </li>
                </ul>
                <div class="btns">
                    <button class="loginBtn form-td" @click="loginBtn">LOG IN</button>
                    <p class="or_text">OR</p>
                    <button class="registerBtn" @click="toRegisterPage">CREATE ACCOUNT</button>
                </div>
            </div>
            <!--忘记密码对话框-->
            <el-dialog class="forgetPasswordDialog" title="forget password" :visible.sync="dialogFormVisible">
                <div class="main">
                    <p><el-input class="firstInput" type="text" v-model="dialogEmail" placeholder="Your email"></el-input><el-button>Send code</el-button></p>
                    <p><el-input class="secondInput" type="text" v-model="code" placeholder="Verification code"></el-input></p>
                    <p><el-input class="secondInput" type="text" v-model="newPassword" placeholder="New password"></el-input></p>
                </div>
                <div slot="footer" class="dialog-footer">
                    <el-button type="primary" >submit</el-button>
                </div>
            </el-dialog>
        </div>
        <!--底部-->
        {% include "smart/footer.volt" %}
    </div>

    {% include "common/commonjs.volt" %}
    <script type="text/javascript" src="/plugin/md5.js"></script>
    <script type="text/javascript" src="/frontend/js/pages/login.js"></script>
</body>
</html>