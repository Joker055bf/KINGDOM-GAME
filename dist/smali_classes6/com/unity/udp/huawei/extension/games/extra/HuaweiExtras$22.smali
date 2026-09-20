.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->getThumbnail(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getThumbnail succeeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;->onSuccess(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 423
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
