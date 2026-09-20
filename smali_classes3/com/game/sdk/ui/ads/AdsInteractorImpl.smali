.class public Lcom/game/sdk/ui/ads/AdsInteractorImpl;
.super Ljava/lang/Object;
.source "AdsInteractorImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/ads/IAdsInteractor;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.game.sdk.ui.ads.AdsInteractorImpl"


# instance fields
.field private callback:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/SaveAIIResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

.field mSaveAiiRequest:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/SaveAIIResponseObj;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/game/sdk/ui/ads/AdsInteractorImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ads/AdsInteractorImpl$1;-><init>(Lcom/game/sdk/ui/ads/AdsInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ads/AdsInteractorImpl;->callback:Lcom/game/sdk/comon/api/MyCallback;

    .line 33
    iput-object p1, p0, Lcom/game/sdk/ui/ads/AdsInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/ads/AdsInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/game/sdk/ui/ads/AdsInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/game/sdk/ui/ads/AdsInteractorImpl;->mSaveAiiRequest:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public saveAii(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getAdsRequest()Lcom/game/sdk/comon/api/request/AdsRequest;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Lcom/game/sdk/comon/api/request/AdsRequest;->saveAii(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/ads/AdsInteractorImpl;->mSaveAiiRequest:Lretrofit2/Call;

    .line 41
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsInteractorImpl;->callback:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
