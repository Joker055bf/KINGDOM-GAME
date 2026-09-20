.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

.field public final synthetic f$1:Lcom/flexionmobile/fdk/ResultHandler;

.field public final synthetic f$2:Lcom/flexionmobile/fdk/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    iput-object p3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;->f$2:Lcom/flexionmobile/fdk/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;->f$2:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-virtual {v0, v1, v2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$queryIncompletePurchasesInternal$10$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void
.end method
