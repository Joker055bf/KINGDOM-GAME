.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/ResultHandler;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;->f$0:Lcom/flexionmobile/fdk/ResultHandler;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;->f$1:Ljava/util/List;

    iput-wide p3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;->f$0:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;->f$1:Ljava/util/List;

    iget-wide v2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$null$13(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;J)V

    return-void
.end method
