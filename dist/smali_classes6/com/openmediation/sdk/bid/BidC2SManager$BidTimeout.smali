.class Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/bid/BidC2SManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BidTimeout"
.end annotation


# instance fields
.field private final mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;->mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/bid/BidC2SManager;->getInstance()Lcom/openmediation/sdk/bid/BidC2SManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;->mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const-string v2, "C2S Bid Failed: timeout"

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$800(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;->mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/16 v1, 0x272d

    const-string v2, "C2S bid timeout"

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    return-void
.end method
