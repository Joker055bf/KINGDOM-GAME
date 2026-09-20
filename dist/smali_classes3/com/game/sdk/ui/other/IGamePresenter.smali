.class public interface abstract Lcom/game/sdk/ui/other/IGamePresenter;
.super Ljava/lang/Object;
.source "IGamePresenter.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BasePresenter;


# virtual methods
.method public abstract connectFaceBook(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMessInGame()V
.end method

.method public abstract saveCharactor(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract saveFCM(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
