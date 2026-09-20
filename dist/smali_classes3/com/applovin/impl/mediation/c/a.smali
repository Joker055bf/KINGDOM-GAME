.class public Lcom/applovin/impl/mediation/c/a;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/a/f;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskAutoInitAdapters"

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, v0, p3, v1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;Z)V

    .line 31
    iput-object p1, p0, Lcom/applovin/impl/mediation/c/a;->a:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/applovin/impl/mediation/c/a;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/a;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/a;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/c/a;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/c/a;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/a;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/c/a;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/c/a;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "Auto-initing adapters for non-MAX mediation provider: "

    const-string v1, "Auto-initing "

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/mediation/c/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 42
    iget-object v2, p0, Lcom/applovin/impl/mediation/c/a;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/a;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/a;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " adapters"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " in test mode"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "AppLovinSdk"

    if-eqz v1, :cond_2

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    const-string v1, "max"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->b:Landroid/app/Activity;

    if-nez v0, :cond_4

    const-string v0, "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n"

    .line 59
    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->P:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/f;

    .line 66
    new-instance v7, Lcom/applovin/impl/mediation/c/a$a;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/a;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    iget-object v5, p0, Lcom/applovin/impl/mediation/c/a;->b:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/mediation/c/a$a;-><init>(Lcom/applovin/impl/mediation/a/f;Ljava/util/List;Lcom/applovin/impl/sdk/p;Landroid/app/Activity;Lcom/applovin/impl/mediation/c/a$1;)V

    .line 67
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/f;->ak()J

    move-result-wide v3

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    goto :goto_3

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/a/f;

    .line 74
    iget-object v2, p0, Lcom/applovin/impl/mediation/c/a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/mediation/c/a$1;

    invoke-direct {v3, p0, v1}, Lcom/applovin/impl/mediation/c/a$1;-><init>(Lcom/applovin/impl/mediation/c/a;Lcom/applovin/impl/mediation/a/f;)V

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/e/o;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/a;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/a;->g:Ljava/lang/String;

    const-string v3, "Failed to auto-init adapters"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method
