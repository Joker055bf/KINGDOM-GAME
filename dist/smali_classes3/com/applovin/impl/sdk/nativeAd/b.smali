.class public Lcom/applovin/impl/sdk/nativeAd/b;
.super Lcom/applovin/impl/sdk/nativeAd/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/applovin/impl/sdk/ad/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/c;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 2

    const-string v0, "adtoken_zone"

    .line 22
    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    const-string v1, "TaskFetchNativeTokenAd"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/applovin/impl/sdk/nativeAd/c;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 24
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->b:Lcom/applovin/impl/sdk/ad/c;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->b:Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->b:Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken_prefix"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
