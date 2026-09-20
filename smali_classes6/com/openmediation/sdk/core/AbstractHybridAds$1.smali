.class Lcom/openmediation/sdk/core/AbstractHybridAds$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/AbstractHybridAds;->startLoadAdsImpl(Lorg/json/JSONObject;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/AbstractHybridAds;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$1;->this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$1;->this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->access$000(Lcom/openmediation/sdk/core/AbstractHybridAds;I)V

    return-void
.end method
