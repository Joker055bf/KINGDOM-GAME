.class public Lcom/game/sdk/ui/other/GameInteractorImpl;
.super Ljava/lang/Object;
.source "GameInteractorImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/other/IGameInteractor;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.game.sdk.ui.other.GameInteractorImpl"


# instance fields
.field private callbackConnectFB:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/BaseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackFCM:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/SaveFcmResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackMessInGame:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/MessInGameResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackSaveCharactor:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/BaseObj;",
            ">;"
        }
    .end annotation
.end field

.field private connectFacebook:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/BaseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

.field private mMessInGameRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/MessInGameResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private saveCharactorRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/BaseObj;",
            ">;"
        }
    .end annotation
.end field

.field private saveFCM:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/SaveFcmResponseObj;",
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/game/sdk/ui/other/GameInteractorImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/other/GameInteractorImpl$1;-><init>(Lcom/game/sdk/ui/other/GameInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackSaveCharactor:Lcom/game/sdk/comon/api/MyCallback;

    .line 105
    new-instance v0, Lcom/game/sdk/ui/other/GameInteractorImpl$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/other/GameInteractorImpl$2;-><init>(Lcom/game/sdk/ui/other/GameInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackFCM:Lcom/game/sdk/comon/api/MyCallback;

    .line 123
    new-instance v0, Lcom/game/sdk/ui/other/GameInteractorImpl$3;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/other/GameInteractorImpl$3;-><init>(Lcom/game/sdk/ui/other/GameInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackMessInGame:Lcom/game/sdk/comon/api/MyCallback;

    .line 141
    new-instance v0, Lcom/game/sdk/ui/other/GameInteractorImpl$4;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/other/GameInteractorImpl$4;-><init>(Lcom/game/sdk/ui/other/GameInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackConnectFB:Lcom/game/sdk/comon/api/MyCallback;

    .line 34
    iput-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/other/GameInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->mMessInGameRequest:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->saveCharactorRequest:Lretrofit2/Call;

    if-eqz p1, :cond_1

    .line 43
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    :cond_1
    return-void
.end method

.method public connectFaceBook(Ljava/lang/String;)V
    .locals 3

    .line 80
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getGameRequest()Lcom/game/sdk/comon/api/request/GameRequest;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2, p1}, Lcom/game/sdk/comon/api/request/GameRequest;->connectFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->connectFacebook:Lretrofit2/Call;

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackConnectFB:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getMessInGame()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getGameRequest()Lcom/game/sdk/comon/api/request/GameRequest;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v0, v1, v2}, Lcom/game/sdk/comon/api/request/GameRequest;->getMessInGame(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->mMessInGameRequest:Lretrofit2/Call;

    .line 53
    iget-object v1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackMessInGame:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public saveCharactor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 58
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getGameRequest()Lcom/game/sdk/comon/api/request/GameRequest;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    .line 64
    invoke-interface/range {v0 .. v7}, Lcom/game/sdk/comon/api/request/GameRequest;->saveCharactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->saveCharactorRequest:Lretrofit2/Call;

    .line 65
    iget-object p2, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackSaveCharactor:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public saveFCM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getNotificationRequest()Lcom/game/sdk/comon/api/request/NotificationRequest;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;

    invoke-direct {v1}, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;-><init>()V

    .line 72
    invoke-virtual {v1, p2}, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;->setRegid(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, p1}, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;->setUser_id(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v1}, Lcom/game/sdk/comon/api/request/NotificationRequest;->saveFCM(Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->saveFCM:Lretrofit2/Call;

    .line 75
    iget-object p2, p0, Lcom/game/sdk/ui/other/GameInteractorImpl;->callbackFCM:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
