.class public Lcom/applovin/impl/sdk/network/PostbackServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/network/l;)Z
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "event"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "postinstall"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/l;->c()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "sub_event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :cond_0
    sget-object p1, Lcom/applovin/impl/sdk/EventServiceImpl;->ALLOW_PRE_INIT_EVENT_TYPES:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public dispatchPostbackAsync(Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/l;->b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/l$a;->e(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/l$a;->b()Lcom/applovin/impl/sdk/network/l;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/impl/sdk/e/o$a;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/applovin/impl/sdk/e/g;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/applovin/impl/sdk/e/g;-><init>(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/impl/sdk/e/o$a;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->a(Lcom/applovin/impl/sdk/network/l;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/g;->a(Z)V

    .line 45
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method public dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/applovin/impl/sdk/e/o$a;->e:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/impl/sdk/e/o$a;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PostbackService{}"

    return-object v0
.end method
