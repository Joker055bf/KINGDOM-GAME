.class Lcom/flexionmobile/fdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/eventbus/EventListener;


# instance fields
.field final synthetic a:Lcom/flexionmobile/fdk/FDKTestBillingService;


# direct methods
.method constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;)V
    .locals 0

    iput-object p1, p0, Lcom/flexionmobile/fdk/c;->a:Lcom/flexionmobile/fdk/FDKTestBillingService;

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

    sget-object v2, Lcom/flexionmobile/fdk/eventbus/EventType;->PURCHASE_FINISHED:Lcom/flexionmobile/fdk/eventbus/EventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onReceive(Lcom/flexionmobile/fdk/eventbus/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/flexionmobile/fdk/c;->a:Lcom/flexionmobile/fdk/FDKTestBillingService;

    invoke-interface {p1}, Lcom/flexionmobile/fdk/eventbus/Event;->getPayload()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/flexionmobile/fdk/c;->a:Lcom/flexionmobile/fdk/FDKTestBillingService;

    invoke-static {v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->access$000(Lcom/flexionmobile/fdk/FDKTestBillingService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/fdk/PurchaseListener;

    invoke-static {v0, p1, v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->access$100(Lcom/flexionmobile/fdk/FDKTestBillingService;Landroid/os/Bundle;Lcom/flexionmobile/fdk/PurchaseListener;)V

    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flexionmobile/fdk/eventbus/EventBus;->unregister(Lcom/flexionmobile/fdk/eventbus/EventListener;)V

    return-void
.end method
