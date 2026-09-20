.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field public static final GooglePlay_CODE:I = 0x26b3

.field public static final Google_CODE:I = 0x26b1

.field public static final HWGame_CODE:I = 0x26af

.field public static final HWID_CODE:I = 0x26ad

.field private static instance:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;


# instance fields
.field private Facebook_Provider:Z

.field private QQ_Provider:Z

.field public Tag:Ljava/lang/String;

.field private Twitter_Provider:Z

.field private Weibo_Provider:Z

.field private current:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LoginManager"

    .line 10
    iput-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Twitter_Provider:Z

    .line 24
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Weibo_Provider:Z

    .line 25
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->QQ_Provider:Z

    .line 26
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Facebook_Provider:Z

    return-void
.end method

.method public static getInstance()Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;
    .locals 1

    .line 71
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->instance:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;

    invoke-direct {v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;-><init>()V

    sput-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->instance:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public disableFacebook()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Facebook_Provider:Z

    return-void
.end method

.method public disableQQ()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->QQ_Provider:Z

    return-void
.end method

.method public disableTwitter()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Twitter_Provider:Z

    return-void
.end method

.method public disableWeibo()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Weibo_Provider:Z

    return-void
.end method

.method public enableFacebook()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Facebook_Provider:Z

    return-void
.end method

.method public enableQQ()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->QQ_Provider:Z

    return-void
.end method

.method public enableTwitter()V
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Twitter_Provider:Z

    return-void
.end method

.method public enableWeibo()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Weibo_Provider:Z

    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    return-void
.end method

.method public initializeOrNot()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x26ad

    if-eq p1, v0, :cond_3

    const/16 v0, 0x26af

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26b1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x26b3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p3, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->Login(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p3, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePre;->Login(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p3, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->Login(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p3, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->Login(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 198
    :goto_0
    iget-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Facebook_Provider:Z

    if-eqz v0, :cond_4

    .line 200
    invoke-static {p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    :cond_4
    iget-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->QQ_Provider:Z

    if-eqz v0, :cond_5

    .line 205
    invoke-static {p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    :cond_5
    iget-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Weibo_Provider:Z

    if-eqz v0, :cond_6

    .line 210
    invoke-static {p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    :cond_6
    iget-boolean v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Twitter_Provider:Z

    if-eqz v0, :cond_7

    .line 215
    invoke-static {p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->onActivityResult(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    return-void
.end method

.method public startFacebook(Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->enableFacebook()V

    .line 162
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startGoogle(Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p1, v0, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePre;->Start(Ljava/lang/String;Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startGooglePlay(Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startHWGame(Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->Start(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startHWID(Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->Start(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startQQ(Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->enableQQ()V

    .line 150
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->Start(Ljava/lang/String;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    .line 151
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->Login(Landroid/app/Activity;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startTwitter(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->enableTwitter()V

    .line 129
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->Start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    .line 130
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->Login(Landroid/app/Activity;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startWechatLogin(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->setContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    .line 140
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->signIn()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startWeibo(Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->initializeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->enableWeibo()V

    .line 173
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    .line 174
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->current:Landroid/app/Activity;

    invoke-static {p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->Login(Landroid/app/Activity;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/LoginManager;->Tag:Ljava/lang/String;

    const-string p2, "LoginManager activity  isn\'t be ininitialized"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
