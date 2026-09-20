.class public Lcom/openmediation/sdk/utils/device/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$OnGetGaidListener;,
        Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;
    .locals 6

    const-string v0, "Gaid:"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string p0, "getAdvertisingIdInfo Cannot be called from the main thread"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingConnection;

    invoke-direct {v1, v3}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v2

    invoke-direct {v0, v5, v2}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    throw v0

    :catch_0
    move-object v1, v3

    :catch_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    return-object v3
.end method

.method public static getGaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$OnGetGaidListener;)V
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;->access$000(Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-interface {p1, p0}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$OnGetGaidListener;->onGetGaid(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
