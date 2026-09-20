.class public Lcom/unity/udp/huawei/extension/jos/HuaweiUpdate;
.super Ljava/lang/Object;
.source "HuaweiUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUpdate(Landroid/app/Activity;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    .locals 1

    const-string v0, "invoke checkUpdate"

    .line 14
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/huawei/hms/jos/JosApps;->getAppUpdateClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/AppUpdateClient;

    move-result-object v0

    .line 16
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/jos/AppUpdateClient;->checkAppUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    return-void
.end method

.method public releaseCallBack(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "invoke checkUpdate"

    .line 26
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/huawei/hms/jos/JosApps;->getAppUpdateClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/AppUpdateClient;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/huawei/hms/jos/AppUpdateClient;->releaseCallBack()V

    return-void
.end method

.method public showUpdateDialog(Landroid/app/Activity;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;Z)V
    .locals 1

    const-string v0, "invoke checkUpdate"

    .line 20
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/huawei/hms/jos/JosApps;->getAppUpdateClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/AppUpdateClient;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/jos/AppUpdateClient;->showUpdateDialog(Landroid/content/Context;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;Z)V

    return-void
.end method
