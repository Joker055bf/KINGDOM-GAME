.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->addSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/archive/ArchiveSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Extras module,addSnapshot archiveSummary == null"

    .line 287
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;

    if-eqz v0, :cond_1

    .line 290
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;->onSuccess(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)V

    return-void
.end method
