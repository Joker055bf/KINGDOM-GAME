.class Lcom/openmediation/sdk/utils/AdRateUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/AdRateUtil;->onSceneShowed(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$scene:Lcom/openmediation/sdk/utils/model/Scene;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/AdRateUtil$2;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/openmediation/sdk/utils/AdRateUtil$2;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/AdRateUtil$2;->val$placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/AdRateUtil$2;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->access$000(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/AdRateUtil$2;->val$placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/AdRateUtil$2;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->access$100(Ljava/lang/String;)V

    return-void
.end method
