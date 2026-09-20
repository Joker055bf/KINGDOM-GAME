.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->deleteSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 693
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;

    if-eqz v0, :cond_0

    .line 697
    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
