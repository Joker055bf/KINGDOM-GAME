.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

.field public final synthetic f$1:Lcom/flexionmobile/fdk/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$null$12$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void
.end method
