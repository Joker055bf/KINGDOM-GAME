.class public Lcom/applovin/impl/sdk/e/l;
.super Lcom/applovin/impl/sdk/e/k;
.source "SourceFile"


# instance fields
.field private final b:Lcom/applovin/impl/sdk/ad/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 2

    const-string v0, "adtoken_zone"

    .line 25
    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    const-string v1, "TaskFetchTokenAd"

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/applovin/impl/sdk/e/k;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 27
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/l;->b:Lcom/applovin/impl/sdk/ad/c;

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

    .line 33
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/l;->b:Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/l;->b:Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken_prefix"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected h()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    .line 43
    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->e:Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method
