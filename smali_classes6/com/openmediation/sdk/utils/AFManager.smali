.class public Lcom/openmediation/sdk/utils/AFManager;
.super Ljava/lang/Object;


# static fields
.field private static final TYPE_CONVERSION_DATA:I = 0x0

.field private static final TYPE_LINK_DATA:I = 0x1

.field private static sConversionData:Ljava/lang/Object;

.field private static sDeepLinkData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAfDataStatus()V
    .locals 3

    sget-object v0, Lcom/openmediation/sdk/utils/AFManager;->sConversionData:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/openmediation/sdk/utils/AFManager;->sendData(ILjava/lang/Object;)V

    sput-object v1, Lcom/openmediation/sdk/utils/AFManager;->sConversionData:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/AFManager;->sDeepLinkData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/openmediation/sdk/utils/AFManager;->sendData(ILjava/lang/Object;)V

    sput-object v1, Lcom/openmediation/sdk/utils/AFManager;->sDeepLinkData:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static getAfId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "com.appsflyer.AppsFlyerLib"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppsFlyerUID error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    :catchall_1
    return-object v0
.end method

.method public static sendAFConversionData(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/OmAds;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/openmediation/sdk/utils/AFManager;->sConversionData:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/openmediation/sdk/utils/AFManager;->sendData(ILjava/lang/Object;)V

    return-void
.end method

.method public static sendAFDeepLinkData(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/OmAds;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/openmediation/sdk/utils/AFManager;->sDeepLinkData:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/openmediation/sdk/utils/AFManager;->sendData(ILjava/lang/Object;)V

    return-void
.end method

.method private static sendData(ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/helper/AfHelper;->sendAfRequest(ILjava/lang/Object;)V

    return-void
.end method
