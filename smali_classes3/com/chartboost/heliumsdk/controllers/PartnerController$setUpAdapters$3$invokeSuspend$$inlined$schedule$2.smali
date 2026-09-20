.class public final Lcom/chartboost/heliumsdk/controllers/PartnerController$setUpAdapters$3$invokeSuspend$$inlined$schedule$2;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/PartnerController$setUpAdapters$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 PartnerController.kt\ncom/chartboost/heliumsdk/controllers/PartnerController$setUpAdapters$3\n*L\n1#1,148:1\n187#2,13:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $metricsDataSet$inlined:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$setUpAdapters$3$invokeSuspend$$inlined$schedule$2;->$metricsDataSet$inlined:Ljava/util/Set;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 147
    move-object v0, p0

    check-cast v0, Ljava/util/TimerTask;

    .line 149
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 150
    iget-object v2, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$setUpAdapters$3$invokeSuspend$$inlined$schedule$2;->$metricsDataSet$inlined:Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 152
    sget-object v7, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getParsingError()Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 153
    new-instance v8, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2B;

    invoke-direct {v8, v7}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2B;-><init>(Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;)V

    .line 152
    check-cast v8, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult;

    goto :goto_0

    .line 154
    :cond_0
    sget-object v7, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getValidCachedConfigExists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    sget-object v7, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2A;->INSTANCE:Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2A;

    move-object v8, v7

    check-cast v8, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult;

    goto :goto_0

    .line 157
    :cond_1
    sget-object v7, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1A;->INSTANCE:Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1A;

    move-object v8, v7

    check-cast v8, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult;

    :goto_0
    move-object v7, v8

    check-cast v7, Lcom/chartboost/heliumsdk/domain/EventResult;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    .line 149
    invoke-static/range {v1 .. v9}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsData$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)V

    .line 160
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method
