.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/ResultHandler;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;->f$0:Lcom/flexionmobile/fdk/ResultHandler;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;->f$0:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$null$16(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/Exception;)V

    return-void
.end method
