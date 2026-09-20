.class public Lcom/openmediation/sdk/utils/OaidHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;,
        Lcom/openmediation/sdk/utils/OaidHelper$Timeout;
    }
.end annotation


# static fields
.field public static final HELPER_VERSION_CODE:I = 0x134654a

.field public static final TAG:Ljava/lang/String; = "OaidHelper"

.field private static final isCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isCertInit:Z = false

.field private static sOaid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/utils/OaidHelper;->isCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    sput-object v0, Lcom/openmediation/sdk/utils/OaidHelper;->sOaid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/openmediation/sdk/utils/OaidHelper;->sOaid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/OaidHelper;->isCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/OaidHelper;->sOaid:Ljava/lang/String;

    return-object v0
.end method

.method public static getOaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->isSafeSDKAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/OaidHelper;->internalGetOaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->isHMSAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/openmediation/sdk/utils/OaidHelper;->getOaidFromHMS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/openmediation/sdk/utils/OaidHelper;->sOaid:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_0
    invoke-interface {p1}, Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;->result()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;->result()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static getOaidFromHMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    invoke-virtual {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static internalGetOaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V
    .locals 4

    sget-object v0, Lcom/openmediation/sdk/utils/OaidHelper;->isCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    const-string v0, "msaoaidsec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    sget v0, Lcom/bun/miitmdid/core/MdidSdkHelper;->SDK_VERSION_CODE:I

    const v1, 0x134654a

    const-string v2, "OaidHelper"

    if-eq v0, v1, :cond_0

    const-string v0, "SDK version not match."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/openmediation/sdk/utils/OaidHelper;->isCertInit:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cert.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openmediation/sdk/utils/OaidHelper;->loadPemFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitCert(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/openmediation/sdk/utils/OaidHelper;->isCertInit:Z

    if-nez v0, :cond_1

    const-string v0, "getDeviceIds: cert init failed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/openmediation/sdk/utils/OaidHelper$1;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/utils/OaidHelper$1;-><init>(Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p0

    const p1, 0xf63e8

    const/4 v1, 0x0

    if-ne p0, p1, :cond_2

    const-string p0, "cert not init or check not pass"

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Lcom/bun/miitmdid/interfaces/IIdentifierListener;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    goto :goto_2

    :cond_2
    const p1, 0xf63e4

    if-ne p0, p1, :cond_3

    const-string p0, "device not supported"

    goto :goto_1

    :cond_3
    const p1, 0xf63e5

    if-ne p0, p1, :cond_4

    const-string p0, "failed to load config file"

    goto :goto_1

    :cond_4
    const p1, 0xf63e3

    if-ne p0, p1, :cond_5

    const-string p0, "manufacturer not supported"

    goto :goto_1

    :cond_5
    const p1, 0xf63e7

    if-ne p0, p1, :cond_6

    const-string p0, "sdk call error"

    goto :goto_1

    :cond_6
    const p1, 0xf63e6

    if-ne p0, p1, :cond_7

    const-string p0, "result delay (async)"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/openmediation/sdk/utils/OaidHelper$Timeout;

    invoke-direct {p1, v0}, Lcom/openmediation/sdk/utils/OaidHelper$Timeout;-><init>(Lcom/bun/miitmdid/interfaces/IIdentifierListener;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    const p1, 0xf63e2

    if-ne p0, p1, :cond_8

    const-string p0, "result ok (sync)"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceIds: unknown code: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :goto_2
    return-void
.end method

.method private static isHMSAccess()Z
    .locals 1

    :try_start_0
    const-string v0, "com.huawei.hms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isSafeSDKAccess()Z
    .locals 1

    :try_start_0
    const-string v0, "com.bun.miitmdid.core.InfoCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static loadPemFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "OaidHelper"

    const-string p1, "loadPemFromAssetFile failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method
