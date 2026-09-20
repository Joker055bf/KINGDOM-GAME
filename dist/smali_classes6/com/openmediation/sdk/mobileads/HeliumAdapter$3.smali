.class Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;
.super Ljava/lang/Object;
.source "HeliumAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/HeliumInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/HeliumAdapter;->getBidResponse(Landroid/content/Context;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/BidCallback;

.field final synthetic val$dataMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->val$dataMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->val$callback:Lcom/openmediation/sdk/mediation/BidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->val$callback:Lcom/openmediation/sdk/mediation/BidCallback;

    if-eqz v0, :cond_0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium SDK init error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/BidCallback;->onBidFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initSuccess()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->val$dataMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;->val$callback:Lcom/openmediation/sdk/mediation/BidCallback;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->access$300(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    return-void
.end method
