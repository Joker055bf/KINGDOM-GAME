.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->getShowSnapshotListIntent(Landroid/app/Activity;Ljava/lang/String;ZZILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;->onSuccess(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 327
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
