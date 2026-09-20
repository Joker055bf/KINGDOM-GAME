.class Lcom/game/sdk/comon/utils/DeviceUtils$getGAIDTask;
.super Landroid/os/AsyncTask;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getGAIDTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/game/sdk/comon/utils/DeviceUtils$Listener;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/utils/DeviceUtils$Listener;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/game/sdk/comon/utils/DeviceUtils$getGAIDTask;->listener:Lcom/game/sdk/comon/utils/DeviceUtils$Listener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 312
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/utils/DeviceUtils$getGAIDTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p1, "gaidnotfound"

    const/4 v0, 0x0

    .line 324
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/game/sdk/comon/utils/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/game/sdk/comon/utils/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object p1

    :catch_0
    move-exception v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Lcom/game/sdk/comon/utils/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Lcom/game/sdk/comon/utils/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 312
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/utils/DeviceUtils$getGAIDTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SDK_ADS"

    .line 338
    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "advertisingId"

    invoke-static {v0, v1, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/game/sdk/comon/utils/DeviceUtils$getGAIDTask;->listener:Lcom/game/sdk/comon/utils/DeviceUtils$Listener;

    invoke-interface {p1}, Lcom/game/sdk/comon/utils/DeviceUtils$Listener;->onGetAds()V

    return-void
.end method
