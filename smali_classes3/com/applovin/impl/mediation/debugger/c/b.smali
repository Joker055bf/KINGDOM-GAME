.class public Lcom/applovin/impl/mediation/debugger/c/b;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/mediation/debugger/c/b$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/mediation/debugger/c/b$a;)V
    .locals 1

    const-string v0, "TaskFetchDeveloperUri"

    .line 45
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 47
    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b;->a:Lcom/applovin/impl/mediation/debugger/c/b$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/debugger/c/b;)Lcom/applovin/impl/mediation/debugger/c/b$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/applovin/impl/mediation/debugger/c/b;->a:Lcom/applovin/impl/mediation/debugger/c/b$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->h()Ljava/util/Map;

    move-result-object v0

    const-string v1, "package_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/c/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/c/b;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/c/b;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Looking up developer URI for package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    const-string v2, "GET"

    .line 67
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, ""

    .line 69
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->c(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/applovin/impl/mediation/debugger/c/b$1;

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/mediation/debugger/c/b$1;-><init>(Lcom/applovin/impl/mediation/debugger/c/b;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 124
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method
