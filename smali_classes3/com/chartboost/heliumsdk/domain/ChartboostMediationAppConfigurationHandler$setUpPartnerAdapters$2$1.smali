.class final Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChartboostMediationAppConfigurationHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->setUpPartnerAdapters(Lcom/chartboost/heliumsdk/controllers/PartnerController;Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "error",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $coroutineResumed:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;->$coroutineResumed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {p0, p1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;->invoke(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;->$coroutineResumed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;->$coroutineResumed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 117
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
