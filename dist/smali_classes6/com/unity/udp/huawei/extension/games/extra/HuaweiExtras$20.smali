.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->loadCoverImage(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
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

    .line 394
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;->onSuccess(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 394
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
