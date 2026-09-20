.class public final Lcom/ironsource/mediationsdk/bidding/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/sdk/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ironsource/mediationsdk/bidding/a;->a:I

    iput-object p2, p0, Lcom/ironsource/mediationsdk/bidding/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/bidding/a;->c:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/bidding/a;->d:Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/ironsource/mediationsdk/utils/f;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/f;-><init>()V

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/bidding/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fetching bidding data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v2, Lcom/ironsource/mediationsdk/bidding/a$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/ironsource/mediationsdk/bidding/a$1;-><init>(Lcom/ironsource/mediationsdk/bidding/a;Lcom/ironsource/mediationsdk/utils/f;Ljava/util/concurrent/BlockingQueue;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/bidding/a;->d:Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/bidding/a;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;->collectBiddingData(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/a/e;

    return-object v0
.end method
