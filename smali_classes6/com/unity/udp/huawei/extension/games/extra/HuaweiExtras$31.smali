.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$31;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->handleDifference(Landroid/app/Activity;Lcom/huawei/hms/jos/games/archive/OperationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$31;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 621
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolve result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "archive"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
