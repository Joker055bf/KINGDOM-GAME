.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/archive/OperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/archive/OperationResult;)V
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras module, loadSnapshotContents isDifference:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->isDifference()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/OperationResult;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 452
    check-cast p1, Lcom/huawei/hms/jos/games/archive/OperationResult;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;->onSuccess(Lcom/huawei/hms/jos/games/archive/OperationResult;)V

    return-void
.end method
