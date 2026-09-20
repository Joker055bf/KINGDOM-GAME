.class public interface abstract Lcom/flexionmobile/fdk/CoreServiceInternal;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCurrentActivity()Landroid/app/Activity;
.end method

.method public abstract initApplication(Landroid/content/Context;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitErrorResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initStartupFlow(Landroid/app/Activity;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;",
            ">;)V"
        }
    .end annotation
.end method
