.class Lcom/applovin/impl/sdk/e/x;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/c/e;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskResolveVastWrapper"

    .line 27
    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 29
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/x;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 30
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/x;->a:Lcom/applovin/impl/c/e;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/x;)Lcom/applovin/impl/c/e;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/x;->a:Lcom/applovin/impl/c/e;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to resolve VAST wrapper due to error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, -0x3f1

    if-ne p1, v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_1

    :cond_1
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_2

    .line 103
    sget-object v0, Lcom/applovin/impl/c/f;->g:Lcom/applovin/impl/c/f;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/impl/c/f;->f:Lcom/applovin/impl/c/f;

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->a:Lcom/applovin/impl/c/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/x;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v1, v2, v0, p1, v3}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/c/f;ILcom/applovin/impl/sdk/p;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/x;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e/x;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/x;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/x;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->a:Lcom/applovin/impl/c/e;

    invoke-static {v0}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/c/e;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/x;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resolving VAST ad with depth "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/x;->a:Lcom/applovin/impl/c/e;

    invoke-virtual {v5}, Lcom/applovin/impl/c/e;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "GET"

    .line 46
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/utils/t;->a:Lcom/applovin/impl/sdk/utils/t;

    .line 47
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eO:Lcom/applovin/impl/sdk/c/b;

    .line 48
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eP:Lcom/applovin/impl/sdk/c/b;

    .line 49
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->c(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/applovin/impl/sdk/e/x$1;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, p0, v0, v3}, Lcom/applovin/impl/sdk/e/x$1;-><init>(Lcom/applovin/impl/sdk/e/x;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 73
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/x;->g:Ljava/lang/String;

    const-string v4, "Unable to resolve VAST wrapper"

    invoke-virtual {v1, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :cond_1
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e/x;->a(I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x;->g:Ljava/lang/String;

    const-string v3, "Resolving VAST failed. Could not find resolution URL"

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e/x;->a(I)V

    :goto_0
    return-void
.end method
