.class public Lcom/game/sdk/ui/ads/AdsPresenterImpl;
.super Ljava/lang/Object;
.source "AdsPresenterImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/ads/IAdsPresenter;


# instance fields
.field private mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

.field private final mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/presenter/InteractorCallback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInteractor:Lcom/game/sdk/ui/ads/IAdsInteractor;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/presenter/BaseView;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;-><init>(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    .line 15
    iput-object p1, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    .line 16
    new-instance p1, Lcom/game/sdk/ui/ads/AdsInteractorImpl;

    invoke-direct {p1, v0}, Lcom/game/sdk/ui/ads/AdsInteractorImpl;-><init>(Lcom/game/sdk/comon/presenter/InteractorCallback;)V

    iput-object p1, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mInteractor:Lcom/game/sdk/ui/ads/IAdsInteractor;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mInteractor:Lcom/game/sdk/ui/ads/IAdsInteractor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/game/sdk/ui/ads/IAdsInteractor;->cancelRequest([Ljava/lang/String;)V

    return-void
.end method

.method public saveAii(Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mInteractor:Lcom/game/sdk/ui/ads/IAdsInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/ads/IAdsInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->mInteractor:Lcom/game/sdk/ui/ads/IAdsInteractor;

    invoke-interface {v0, p1}, Lcom/game/sdk/ui/ads/IAdsInteractor;->saveAii(Ljava/lang/String;)V

    return-void
.end method
