.class public Lcom/game/sdk/comon/cmd/CmdPaymentV3;
.super Ljava/lang/Object;
.source "CmdPaymentV3.java"


# static fields
.field private static INSTANCE:Lcom/game/sdk/comon/cmd/CmdPaymentV3; = null

.field private static final TAG:Ljava/lang/String; = "CmdPaymentV3"

.field private static final TYPE_IAB:I = 0x1

.field private static final TYPE_PAYPAL:I = 0x2

.field private static final TYPE_UNKNOWN:I


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;
    .locals 1

    .line 61
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->INSTANCE:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    invoke-direct {v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;-><init>()V

    sput-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->INSTANCE:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    .line 64
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->INSTANCE:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    return-object v0
.end method


# virtual methods
.method public billingEndConnection()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string v1, "BillingClient can only be used once -- closing connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method public consumeAsyncPurchase(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public initIABv3(Landroid/content/Context;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->context:Landroid/content/Context;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 78
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    goto :goto_0

    .line 84
    :cond_1
    sget-object p1, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string p3, "BillingClient is not null"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p1

    if-nez p1, :cond_3

    .line 88
    sget-object p1, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string p3, "BillingClient: Start connection..."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_1

    .line 91
    :cond_3
    sget-object p1, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string p2, "BillingClient: Started connection"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public initIABv3(Landroid/content/Context;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->context:Landroid/content/Context;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1

    .line 102
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    goto :goto_0

    .line 107
    :cond_1
    sget-object p1, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string p3, "BillingClient is not null"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p1

    if-nez p1, :cond_2

    .line 111
    sget-object p1, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string p3, "BillingClient: Start connection..."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_1

    .line 115
    :cond_2
    sget-object p1, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string p2, "BillingClient: Started connection"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    invoke-virtual {p0, p4}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->queryHistory(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;)I
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string v1, "launchBillingFlow: BillingClient is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    .line 143
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    .line 145
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    .line 147
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchBillingFlow: BillingResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public mobPaymentSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, p1, p2, v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->mobPaymentSuccess(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method mobPaymentSuccess(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 26

    move/from16 v1, p3

    const-string v0, "game_price"

    const-string v2, "platform_price"

    const-string v3, "order_product"

    const-string v4, "order_id"

    const-string v5, "message"

    const-string/jumbo v6, "user_id"

    const-string v7, "is_sandbox"

    const-string v8, "game_area_id"

    const-string v9, "game_role_id"

    const-string/jumbo v10, "state"

    const-string v11, "payment"

    const-string v12, "category"

    const-string v13, "com.mobgame.broadcast"

    const-string/jumbo v14, "status"

    .line 341
    sget-object v15, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string v1, "mobPaymentSuccess"

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    :try_start_1
    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v15

    const-string v15, "0"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 346
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v4

    .line 348
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v3

    const-string v3, "details"

    .line 349
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p2, v3

    const-string/jumbo v3, "time"

    .line 350
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    .line 351
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v2

    .line 352
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v22, ""

    if-eqz v21, :cond_0

    .line 358
    :try_start_2
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    goto :goto_0

    :cond_0
    move-object/from16 v23, v22

    .line 360
    :goto_0
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 361
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v24, v21

    goto :goto_1

    :cond_1
    move-object/from16 v24, v22

    .line 363
    :goto_1
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 364
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v25, v21

    goto :goto_2

    :cond_2
    move-object/from16 v25, v22

    .line 366
    :goto_2
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 367
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :cond_3
    move-object/from16 v21, v22

    .line 370
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v22, v11

    const/4 v11, 0x1

    .line 372
    :try_start_3
    invoke-virtual {v1, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v5, v18

    .line 374
    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v5, v19

    .line 375
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "order_info"

    move-object/from16 v5, p2

    .line 376
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "order_time"

    move-object/from16 v5, v17

    .line 377
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v4, v20

    .line 378
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v23

    .line 380
    invoke-virtual {v1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v24

    .line 381
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v25

    .line 382
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v21

    .line 383
    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-static/range {p1 .. p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_4
    move-object/from16 v22, v11

    const-string v0, "on pay failed"

    move-object/from16 v1, v17

    .line 386
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, v22

    .line 388
    :try_start_4
    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 389
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Error purchasing"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v3, v16

    .line 390
    :try_start_5
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-static/range {p1 .. p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move/from16 v2, p3

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    goto :goto_6

    .line 403
    :cond_5
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->close()V

    goto :goto_6

    :catch_0
    move-exception v0

    move/from16 v2, p3

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v2, p3

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v2, p3

    move-object/from16 v3, v16

    move-object/from16 v1, v22

    goto :goto_5

    :catch_3
    move-exception v0

    move/from16 v2, p3

    move-object v1, v11

    :goto_4
    move-object/from16 v3, v16

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v2, p3

    goto :goto_7

    :catch_4
    move-exception v0

    move/from16 v2, p3

    move-object v3, v5

    move-object v1, v11

    .line 394
    :goto_5
    :try_start_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 396
    invoke-virtual {v4, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-static/range {p1 .. p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    :goto_6
    return-void

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v2, :cond_6

    const/4 v1, 0x2

    if-eq v2, v1, :cond_6

    goto :goto_8

    .line 403
    :cond_6
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobgame/MobGameSDK;->close()V

    .line 408
    :goto_8
    throw v0
.end method

.method public queryHistory(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "inapp"

    .line 332
    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    :cond_0
    return-void
.end method

.method public querySkuDetails(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 3

    .line 122
    sget-object v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->TAG:Ljava/lang/String;

    const-string v1, "querySkuDetails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string v2, "inapp"

    .line 128
    invoke-virtual {p1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    const-string v1, "querySkuDetailsAsync"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public verifyPayment(Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 3

    .line 173
    new-instance v0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;-><init>()V

    .line 174
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setOrder_no(Ljava/lang/String;)V

    const-string v1, "2"

    .line 175
    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V

    .line 177
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setLocale(Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v2, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3;Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    invoke-direct {v1, v2}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 248
    invoke-interface {v1, v0}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V

    return-void
.end method

.method public verifyPaymentNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 9

    .line 252
    new-instance v0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;-><init>()V

    .line 253
    invoke-virtual {p3}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setOrder_no(Ljava/lang/String;)V

    const-string v1, "2"

    .line 254
    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V

    .line 256
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 257
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 260
    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 262
    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setLocale(Ljava/lang/String;)V

    .line 264
    new-instance v1, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v8, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3;Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    invoke-direct {v1, v8}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 327
    invoke-interface {v1, v0}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V

    return-void
.end method
