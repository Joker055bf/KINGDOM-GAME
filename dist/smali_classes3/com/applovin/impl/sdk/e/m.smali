.class public Lcom/applovin/impl/sdk/e/m;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/e/m$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/e/m$a;)V
    .locals 1

    const-string v0, "TaskFetchVariables"

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 34
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/m;->a:Lcom/applovin/impl/sdk/e/m$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/m;)Lcom/applovin/impl/sdk/e/m$a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/m;->a:Lcom/applovin/impl/sdk/e/m$a;

    return-object p0
.end method

.method private a()Ljava/util/Map;
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

    .line 84
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Lcom/applovin/impl/sdk/q;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/m;->a()Ljava/util/Map;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    .line 44
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/i;->l(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    .line 45
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/i;->m(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "GET"

    .line 47
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->ds:Lcom/applovin/impl/sdk/c/b;

    .line 49
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/applovin/impl/sdk/e/m$1;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/sdk/e/m$1;-><init>(Lcom/applovin/impl/sdk/e/m;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 77
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->bk:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/c/b;)V

    .line 78
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->bl:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/u;->b(Lcom/applovin/impl/sdk/c/b;)V

    .line 79
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/m;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method
