.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->handleDifference(Landroid/app/Activity;Lcom/huawei/hms/jos/games/archive/OperationResult;)V
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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Landroid/app/Activity;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/archive/OperationResult;)V
    .locals 3

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDifference:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 608
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

    const-string v1, "archive"

    .line 607
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 609
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->isDifference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->getArchive()Lcom/huawei/hms/jos/games/archive/Archive;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 611
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/archive/Archive;->getSummary()Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ArchiveId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/archive/Archive;->getSummary()Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iget-object v1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->access$000(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Landroid/app/Activity;Lcom/huawei/hms/jos/games/archive/OperationResult;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 604
    check-cast p1, Lcom/huawei/hms/jos/games/archive/OperationResult;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;->onSuccess(Lcom/huawei/hms/jos/games/archive/OperationResult;)V

    return-void
.end method
