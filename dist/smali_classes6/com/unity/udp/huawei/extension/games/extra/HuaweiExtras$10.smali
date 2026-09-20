.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->getLimitThumbnailSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLimitThumbnailSize succeeded, maxThumbnailSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;->onSuccess(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
