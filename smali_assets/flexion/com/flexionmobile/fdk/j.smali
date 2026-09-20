.class public Lcom/flexionmobile/fdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/PurchaseService;


# instance fields
.field private final a:Lcom/flexionmobile/fdk/FDKTestBillingService;


# direct methods
.method public constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/j;->a:Lcom/flexionmobile/fdk/FDKTestBillingService;

    return-void
.end method


# virtual methods
.method public complete(Lcom/flexionmobile/fdk/Purchase;)V
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/j;->a:Lcom/flexionmobile/fdk/FDKTestBillingService;

    invoke-interface {p1}, Lcom/flexionmobile/fdk/Purchase;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method
