.class Lcom/flexionmobile/fdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/eventbus/EventListener;


# instance fields
.field final synthetic a:Lcom/flexionmobile/fdk/ResultHandler;

.field final synthetic b:Lcom/flexionmobile/fdk/ResultHandler;

.field final synthetic c:Lcom/flexionmobile/fdk/FDKTestCoreService;


# direct methods
.method constructor <init>(Lcom/flexionmobile/fdk/FDKTestCoreService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/flexionmobile/fdk/e;->c:Lcom/flexionmobile/fdk/FDKTestCoreService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/e;->a:Lcom/flexionmobile/fdk/ResultHandler;

    iput-object p3, p0, Lcom/flexionmobile/fdk/e;->b:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/flexionmobile/fdk/eventbus/EventType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/flexionmobile/fdk/eventbus/EventType;

    sget-object v2, Lcom/flexionmobile/fdk/eventbus/EventType;->INIT_FINISHED:Lcom/flexionmobile/fdk/eventbus/EventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onReceive(Lcom/flexionmobile/fdk/eventbus/Event;)V
    .locals 3

    invoke-static {}, Lcom/flexionmobile/fdk/FDKTestCoreService;->access$000()Lcom/flexionmobile/fdk/FdkAndroidLogger;

    move-result-object v0

    const-string v1, "INIT_FINISHED event received"

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/flexionmobile/fdk/eventbus/Event;->getPayload()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/flexionmobile/fdk/e;->c:Lcom/flexionmobile/fdk/FDKTestCoreService;

    iget-object v1, p0, Lcom/flexionmobile/fdk/e;->a:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v2, p0, Lcom/flexionmobile/fdk/e;->b:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/flexionmobile/fdk/FDKTestCoreService;->onAuthenticationFinished(Landroid/os/Bundle;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flexionmobile/fdk/eventbus/EventBus;->unregister(Lcom/flexionmobile/fdk/eventbus/EventListener;)V

    return-void
.end method
