.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

.field public final synthetic f$1:Lcom/flexionmobile/fdk/ResultHandler;

.field public final synthetic f$2:Lcom/flexionmobile/fdk/PurchaseListener;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/flexionmobile/fdk/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    iput-object p3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$2:Lcom/flexionmobile/fdk/PurchaseListener;

    iput-object p4, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$4:Lcom/flexionmobile/fdk/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$1:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$2:Lcom/flexionmobile/fdk/PurchaseListener;

    iget-object v3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;->f$4:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$initBillingServiceInternal$2$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void
.end method
