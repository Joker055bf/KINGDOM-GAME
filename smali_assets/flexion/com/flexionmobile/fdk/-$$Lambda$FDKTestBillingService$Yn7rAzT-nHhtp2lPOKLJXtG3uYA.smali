.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;->f$0:Lcom/flexionmobile/fdk/FDKTestBillingService;

    iget-object v1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->lambda$finishTransaction$18$FDKTestBillingService(Ljava/lang/String;)V

    return-void
.end method
