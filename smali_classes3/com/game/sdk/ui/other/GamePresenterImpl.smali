.class public Lcom/game/sdk/ui/other/GamePresenterImpl;
.super Ljava/lang/Object;
.source "GamePresenterImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/other/IGamePresenter;


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

.field private mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/presenter/BaseView;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/other/GamePresenterImpl$1;-><init>(Lcom/game/sdk/ui/other/GamePresenterImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    .line 17
    iput-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    .line 18
    new-instance p1, Lcom/game/sdk/ui/other/GameInteractorImpl;

    invoke-direct {p1, v0}, Lcom/game/sdk/ui/other/GameInteractorImpl;-><init>(Lcom/game/sdk/comon/presenter/InteractorCallback;)V

    iput-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/game/sdk/ui/other/IGameInteractor;->cancelRequest([Ljava/lang/String;)V

    return-void
.end method

.method public connectFaceBook(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/other/IGameInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    invoke-interface {v0, p1}, Lcom/game/sdk/ui/other/IGameInteractor;->connectFaceBook(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 74
    invoke-interface {p1, v0}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMessInGame()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/other/IGameInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    invoke-interface {v0}, Lcom/game/sdk/ui/other/IGameInteractor;->getMessInGame()V

    return-void
.end method

.method public saveCharactor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/other/IGameInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    invoke-interface {v0, p1, p2}, Lcom/game/sdk/ui/other/IGameInteractor;->saveCharactor(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string p2, ""

    .line 56
    invoke-interface {p1, p2}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveFCM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/other/IGameInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mInteractor:Lcom/game/sdk/ui/other/IGameInteractor;

    invoke-interface {v0, p1, p2}, Lcom/game/sdk/ui/other/IGameInteractor;->saveFCM(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string p2, ""

    .line 65
    invoke-interface {p1, p2}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
