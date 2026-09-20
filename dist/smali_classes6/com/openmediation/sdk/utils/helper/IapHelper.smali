.class public Lcom/openmediation/sdk/utils/helper/IapHelper;
.super Ljava/lang/Object;


# static fields
.field private static final FLOAT_ACCURACY:F = 1.0E-4f

.field private static final IAP_NUMBER:Ljava/lang/String; = "c_iap_number"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(D)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/helper/IapHelper;->saveIap(D)V

    return-void
.end method

.method public static getIap()Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v2

    const-string v3, "c_iap_number"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "getIap error :"

    invoke-static {v3, v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static iapReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/openmediation/sdk/utils/helper/IapHelper$2;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static saveIap(D)V
    .locals 2

    const-wide v0, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v0, v0, p0

    if-lez v0, :cond_0

    :try_start_0
    const-string p0, "iapNumber is zero"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "c_iap_number"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "saveIap error :"

    invoke-static {p1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setIap(FLjava/lang/String;)V
    .locals 2

    const v0, 0x38d1b717

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    const-string p0, "iapNumber  is zero"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "currency is null"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/openmediation/sdk/utils/helper/IapHelper;->getIap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/utils/helper/IapHelper$1;

    invoke-direct {v1}, Lcom/openmediation/sdk/utils/helper/IapHelper$1;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/openmediation/sdk/utils/helper/IapHelper;->iapReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V

    return-void
.end method
