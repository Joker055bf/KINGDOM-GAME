.class public Lcom/game/sdk/ui/login/LoginInteractorImpl;
.super Ljava/lang/Object;
.source "LoginInteractorImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/login/ILoginInteractor;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.game.sdk.ui.login.LoginInteractorImpl"


# instance fields
.field private callbackAuthen:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackGetSdk:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackLoginEmail:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackLoginFacebook:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackLoginGG:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackLoginPlayNow:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackUser:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/UserResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

.field private mLoginFacebookRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginGGRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginPlayNowRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkConfigRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mUserRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/UserResponseObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/game/sdk/comon/presenter/InteractorCallback;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$1;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginEmail:Lcom/game/sdk/comon/api/MyCallback;

    .line 186
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$2;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackAuthen:Lcom/game/sdk/comon/api/MyCallback;

    .line 205
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$3;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$3;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackUser:Lcom/game/sdk/comon/api/MyCallback;

    .line 223
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$4;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$4;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginPlayNow:Lcom/game/sdk/comon/api/MyCallback;

    .line 241
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$5;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$5;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackGetSdk:Lcom/game/sdk/comon/api/MyCallback;

    .line 259
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$6;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$6;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginFacebook:Lcom/game/sdk/comon/api/MyCallback;

    .line 276
    new-instance v0, Lcom/game/sdk/ui/login/LoginInteractorImpl$7;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginInteractorImpl$7;-><init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginGG:Lcom/game/sdk/comon/api/MyCallback;

    .line 48
    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/login/LoginInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginRequest:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mAuthenRequest:Lretrofit2/Call;

    if-eqz p1, :cond_1

    .line 154
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mUserRequest:Lretrofit2/Call;

    if-eqz p1, :cond_2

    .line 156
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginPlayNowRequest:Lretrofit2/Call;

    if-eqz p1, :cond_3

    .line 158
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginFacebookRequest:Lretrofit2/Call;

    if-eqz p1, :cond_4

    .line 160
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mSdkConfigRequest:Lretrofit2/Call;

    if-eqz p1, :cond_5

    .line 162
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginGGRequest:Lretrofit2/Call;

    if-eqz p1, :cond_6

    .line 164
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    :cond_6
    return-void
.end method

.method public getAuthenConfig()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getGameRequest()Lcom/game/sdk/comon/api/request/GameRequest;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-interface {v0, v2, v1}, Lcom/game/sdk/comon/api/request/GameRequest;->getAuthenConfig(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mAuthenRequest:Lretrofit2/Call;

    .line 74
    iget-object v1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackAuthen:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getSdkConfig()V
    .locals 3

    .line 142
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getGameRequest()Lcom/game/sdk/comon/api/request/GameRequest;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-interface {v0, v2, v1}, Lcom/game/sdk/comon/api/request/GameRequest;->getSdkConfig(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mSdkConfigRequest:Lretrofit2/Call;

    .line 146
    iget-object v1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackGetSdk:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getUser()V
    .locals 8

    .line 79
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getLoginRequest()Lcom/game/sdk/comon/api/request/LoginRequest;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-interface/range {v0 .. v7}, Lcom/game/sdk/comon/api/request/LoginRequest;->getUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mUserRequest:Lretrofit2/Call;

    .line 88
    iget-object v1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackUser:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public loginEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 54
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getLoginRequest()Lcom/game/sdk/comon/api/request/LoginRequest;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "empty"

    .line 63
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object v3, p1

    move-object v4, p2

    .line 64
    invoke-interface/range {v0 .. v11}, Lcom/game/sdk/comon/api/request/LoginRequest;->loginEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginRequest:Lretrofit2/Call;

    .line 65
    iget-object p2, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginEmail:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public loginFtFacebook(Ljava/lang/String;)V
    .locals 11

    .line 110
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getLoginRequest()Lcom/game/sdk/comon/api/request/LoginRequest;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 117
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "empty"

    .line 119
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object v3, p1

    .line 120
    invoke-interface/range {v0 .. v10}, Lcom/game/sdk/comon/api/request/LoginRequest;->loginFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginFacebookRequest:Lretrofit2/Call;

    .line 121
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginFacebook:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public loginFtGoogle(Ljava/lang/String;)V
    .locals 11

    .line 126
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getLoginRequest()Lcom/game/sdk/comon/api/request/LoginRequest;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "empty"

    .line 135
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object v3, p1

    .line 136
    invoke-interface/range {v0 .. v10}, Lcom/game/sdk/comon/api/request/LoginRequest;->loginGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginGGRequest:Lretrofit2/Call;

    .line 137
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginGG:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public loginPlayNow()V
    .locals 12

    .line 93
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/DeviceUtils;->getUniqueDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getLoginRequest()Lcom/game/sdk/comon/api/request/LoginRequest;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "empty"

    .line 103
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 104
    invoke-interface/range {v1 .. v11}, Lcom/game/sdk/comon/api/request/LoginRequest;->loginPlayNow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->mLoginPlayNowRequest:Lretrofit2/Call;

    .line 105
    iget-object v1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl;->callbackLoginPlayNow:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
