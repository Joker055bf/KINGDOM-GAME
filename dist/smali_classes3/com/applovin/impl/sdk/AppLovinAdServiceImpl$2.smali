.class Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILcom/applovin/sdk/AppLovinAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;I)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;->c:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput p3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/i;

    if-eqz v1, :cond_0

    .line 359
    check-cast v0, Lcom/applovin/impl/sdk/ad/i;

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinError;

    iget v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;->b:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/applovin/impl/sdk/ad/i;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    goto :goto_0

    .line 363
    :cond_0
    iget v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;->b:I

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AppLovinAdService"

    const-string v2, "Unable to notify listener about ad load failure"

    .line 368
    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
