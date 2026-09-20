.class final Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChartboostMediationInternal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->initialize-yxL6bBk$Helium_release(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/HeliumInitializationOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.chartboost.heliumsdk.ChartboostMediationInternal$initialize$2"
    f = "ChartboostMediationInternal.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x88,
        0x8f
    }
    m = "invokeSuspend"
    n = {
        "localPrivacyController",
        "localPrivacyController"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $appSignature:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $options:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/ChartboostMediationInternal;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/HeliumInitializationOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/ChartboostMediationInternal;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/HeliumInitializationOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appSignature:Ljava/lang/String;

    iput-object p5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$options:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appSignature:Ljava/lang/String;

    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$options:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;-><init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/ChartboostMediationInternal;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/HeliumInitializationOptions;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/chartboost/heliumsdk/controllers/PrivacyController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/chartboost/heliumsdk/controllers/PrivacyController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    const-string v5, "CBM_INTERNAL"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "cbm_internal_server_log_level_override"

    .line 80
    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    .line 79
    :cond_3
    invoke-static {v1}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->valueOf(Ljava/lang/String;)Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_4

    .line 88
    sget-object v1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    invoke-virtual {v1, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->setServerLogLevelOverride$Helium_release(Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;)V

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getInitializationStatus$Helium_release()Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    move-result-object p1

    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;->INITIALIZED:Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    if-ne p1, v1, :cond_6

    .line 92
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    .line 93
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getWeakActivityContext$Helium_release()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 92
    :goto_0
    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setWeakActivityContext$Helium_release(Ljava/lang/ref/WeakReference;)V

    .line 94
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "Chartboost Mediation already initialized. Potentially updating the activity"

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 95
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getInitializationStatus$Helium_release()Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    move-result-object p1

    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;->INITIALIZING:Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    if-ne p1, v1, :cond_7

    .line 98
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 99
    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    .line 100
    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_INITIALIZATION_IN_PROGRESS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 99
    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 98
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 104
    :cond_7
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;->INITIALIZING:Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setInitializationStatus$Helium_release(Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;)V

    .line 105
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Chartboost Mediation initialize called with SDK Key: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setAppId$Helium_release(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$appSignature:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setAppSignature$Helium_release(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    .line 110
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-direct {v1, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getWeakActivityContext$Helium_release()Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 109
    :goto_1
    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setWeakActivityContext$Helium_release(Ljava/lang/ref/WeakReference;)V

    .line 111
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setAppContext$Helium_release(Landroid/content/Context;)V

    .line 112
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getPrivacyController$Helium_release()Lcom/chartboost/heliumsdk/controllers/PrivacyController;

    move-result-object p1

    if-nez p1, :cond_9

    new-instance p1, Lcom/chartboost/heliumsdk/controllers/PrivacyController;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getPartnerConsents$Helium_release()Lcom/chartboost/heliumsdk/PartnerConsents;

    move-result-object v5

    invoke-direct {p1, v1, v5}, Lcom/chartboost/heliumsdk/controllers/PrivacyController;-><init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/PartnerConsents;)V

    .line 113
    :cond_9
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v1, p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setPrivacyController$Helium_release(Lcom/chartboost/heliumsdk/controllers/PrivacyController;)V

    .line 114
    new-instance v7, Lcom/chartboost/heliumsdk/controllers/BidController;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getPartnerController$Helium_release()Lcom/chartboost/heliumsdk/controllers/PartnerController;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/chartboost/heliumsdk/controllers/BidController;-><init>(Lcom/chartboost/heliumsdk/controllers/PartnerController;)V

    .line 115
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    .line 116
    new-instance v5, Lcom/chartboost/heliumsdk/controllers/AdController;

    .line 118
    iget-object v6, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getPartnerController$Helium_release()Lcom/chartboost/heliumsdk/controllers/PartnerController;

    move-result-object v8

    .line 120
    new-instance v10, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

    invoke-direct {v10}, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;-><init>()V

    .line 121
    new-instance v6, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitor;

    invoke-direct {v6}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitor;-><init>()V

    move-object v11, v6

    check-cast v11, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;

    .line 122
    iget-object v6, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getIlrd$Helium_release()Lcom/chartboost/heliumsdk/Ilrd;

    move-result-object v12

    move-object v6, v5

    move-object v9, p1

    .line 116
    invoke-direct/range {v6 .. v12}, Lcom/chartboost/heliumsdk/controllers/AdController;-><init>(Lcom/chartboost/heliumsdk/controllers/BidController;Lcom/chartboost/heliumsdk/controllers/PartnerController;Lcom/chartboost/heliumsdk/controllers/PrivacyController;Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;Lcom/chartboost/heliumsdk/Ilrd;)V

    .line 115
    invoke-virtual {v1, v5}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setAdController$Helium_release(Lcom/chartboost/heliumsdk/controllers/AdController;)V

    .line 125
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getPartnerConsents$Helium_release()Lcom/chartboost/heliumsdk/PartnerConsents;

    move-result-object v1

    .line 126
    new-instance v5, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2$2;

    iget-object v6, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v7, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-direct {v5, v6, v7, p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2$2;-><init>(Lcom/chartboost/heliumsdk/ChartboostMediationInternal;Landroid/content/Context;Lcom/chartboost/heliumsdk/controllers/PrivacyController;)V

    check-cast v5, Lcom/chartboost/heliumsdk/PartnerConsents$PartnerConsentsObserver;

    .line 125
    invoke-virtual {v1, v5}, Lcom/chartboost/heliumsdk/PartnerConsents;->addPartnerConsentsObserver$Helium_release(Lcom/chartboost/heliumsdk/PartnerConsents$PartnerConsentsObserver;)V

    .line 136
    new-instance v1, Lcom/chartboost/heliumsdk/controllers/AppConfigController;

    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context.applicationContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lcom/chartboost/heliumsdk/controllers/AppConfigController;-><init>(Landroid/content/Context;)V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->label:I

    invoke-virtual {v1, v5}, Lcom/chartboost/heliumsdk/controllers/AppConfigController;->get(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    .line 140
    :cond_a
    :goto_2
    new-instance v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;

    .line 141
    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    .line 142
    iget-object v6, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$options:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

    .line 140
    invoke-direct {v1, v5, v6}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;-><init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/HeliumInitializationOptions;)V

    .line 143
    iget-object v5, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getPartnerController$Helium_release()Lcom/chartboost/heliumsdk/controllers/PartnerController;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->label:I

    invoke-virtual {v1, v5, v6}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->handleConfigurationChange(Lcom/chartboost/heliumsdk/controllers/PartnerController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_b

    return-object v0

    :cond_b
    move-object v0, p1

    move-object p1, v1

    .line 72
    :goto_3
    check-cast p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    if-eqz p1, :cond_c

    .line 146
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;->IDLE:Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setInitializationStatus$Helium_release(Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;)V

    .line 147
    sget-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->INSTANCE:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;

    invoke-virtual {v0, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->autoStartQueues$Helium_release(Z)V

    .line 148
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    invoke-direct {v0, p1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 151
    :cond_c
    sget-object p1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/chartboost/heliumsdk/utils/Environment;->startSession(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/controllers/PrivacyController;->updatePartnerConsentsFromDisk$Helium_release()V

    .line 153
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->access$runGdprConsentTask(Lcom/chartboost/heliumsdk/ChartboostMediationInternal;Landroid/content/Context;Lcom/chartboost/heliumsdk/controllers/PrivacyController;)V

    .line 154
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->access$runCcpaConsentTask(Lcom/chartboost/heliumsdk/ChartboostMediationInternal;Landroid/content/Context;Lcom/chartboost/heliumsdk/controllers/PrivacyController;)V

    .line 155
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->$context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->access$runSubjectToCoppaTask(Lcom/chartboost/heliumsdk/ChartboostMediationInternal;Landroid/content/Context;Lcom/chartboost/heliumsdk/controllers/PrivacyController;)V

    .line 156
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ChartboostMediationInternal$initialize$2;->this$0:Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    sget-object v0, Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;->INITIALIZED:Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->setInitializationStatus$Helium_release(Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;)V

    .line 157
    sget-object p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->INSTANCE:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;

    invoke-virtual {p1, v4}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->autoStartQueues$Helium_release(Z)V

    .line 158
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
