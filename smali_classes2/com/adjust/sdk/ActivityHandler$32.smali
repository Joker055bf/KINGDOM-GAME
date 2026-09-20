.class Lcom/adjust/sdk/ActivityHandler$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->readLicenseVerificationData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$32;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$32;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getLicenseVerificationTracked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$32;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$32;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v1}, Lcom/adjust/sdk/ActivityHandler;->access$1600(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$32;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v2}, Lcom/adjust/sdk/ActivityHandler;->access$1700(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/DeviceInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/adjust/sdk/DeviceInfo;->appInstallTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->getLicenseRequiredData(Landroid/content/Context;Lcom/adjust/sdk/ILogger;J)Lcom/adjust/sdk/LicenseData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$32;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler;->sendLicenseVerificationData(Lcom/adjust/sdk/LicenseData;)V

    :cond_1
    :goto_0
    return-void
.end method
