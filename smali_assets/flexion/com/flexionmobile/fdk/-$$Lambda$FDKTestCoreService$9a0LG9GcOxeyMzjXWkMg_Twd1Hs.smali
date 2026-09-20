.class public final synthetic Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$9a0LG9GcOxeyMzjXWkMg_Twd1Hs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flexionmobile/fdk/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$9a0LG9GcOxeyMzjXWkMg_Twd1Hs;->f$0:Lcom/flexionmobile/fdk/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$9a0LG9GcOxeyMzjXWkMg_Twd1Hs;->f$0:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-static {v0}, Lcom/flexionmobile/fdk/FDKTestCoreService;->lambda$onAuthenticationFinished$4(Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void
.end method
