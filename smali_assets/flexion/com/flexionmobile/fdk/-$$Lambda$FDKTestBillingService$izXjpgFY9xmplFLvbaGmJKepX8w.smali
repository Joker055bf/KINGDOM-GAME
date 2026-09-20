.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

.field public final synthetic f$1:Lcom/flexionmobile/fdk/PurchaseListener;

.field public final synthetic f$2:Lcom/flexionmobile/fdk/ItemDefinition;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;->f$1:Lcom/flexionmobile/fdk/PurchaseListener;

    iput-object p3, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;->f$2:Lcom/flexionmobile/fdk/ItemDefinition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;->f$1:Lcom/flexionmobile/fdk/PurchaseListener;

    iget-object v2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;->f$2:Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-virtual {v0, v1, v2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$onPurchaseFinished$24$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ItemDefinition;)V

    return-void
.end method
