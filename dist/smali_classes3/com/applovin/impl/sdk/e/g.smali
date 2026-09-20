.class public Lcom/applovin/impl/sdk/e/g;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/network/l;

.field private final b:Lcom/applovin/sdk/AppLovinPostbackListener;

.field private final c:Lcom/applovin/impl/sdk/e/o$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/impl/sdk/e/o$a;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    const-string v0, "TaskDispatchPostback"

    .line 28
    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    .line 33
    iput-object p4, p0, Lcom/applovin/impl/sdk/e/g;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    .line 34
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/g;->c:Lcom/applovin/impl/sdk/e/o$a;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/sdk/AppLovinPostbackListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/g;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 90
    new-instance v0, Lcom/applovin/impl/sdk/e/g$2;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/g;->d()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/e/g$2;-><init>(Lcom/applovin/impl/sdk/e/g;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 156
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->c:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/e/o$a;)V

    .line 157
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/g;->d()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/l;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/e/g;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->g:Ljava/lang/String;

    const-string v2, "Requested URL is not valid; nothing to do..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/l;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x384

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_1
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    new-instance v0, Lcom/applovin/impl/sdk/e/g$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/e/g$1;-><init>(Lcom/applovin/impl/sdk/e/g;)V

    .line 73
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/g;->d()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->fQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/g;->d()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->aa()Lcom/applovin/impl/sdk/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/ae;->a(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/l;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/g;->d()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    .line 84
    :cond_4
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->a()V

    :goto_0
    return-void
.end method
