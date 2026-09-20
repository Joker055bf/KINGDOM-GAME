.class public Lcom/chartboost/sdk/impl/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/chartboost/sdk/impl/g1;

.field public final c:Lcom/chartboost/sdk/impl/h1;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/g1;Lcom/chartboost/sdk/impl/h1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n1;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/n1;->b:Lcom/chartboost/sdk/impl/g1;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/n1;->c:Lcom/chartboost/sdk/impl/h1;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/n1;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/n1;->b(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "CBURLOpener"

    const-string p2, "Impression is null on urlOpenAttempted"

    .line 1
    invoke-static {p1, p2}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/chartboost/sdk/internal/Model/a;->H:Z

    .line 6
    invoke-virtual {p1}, Lcom/chartboost/sdk/internal/Model/a;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/chartboost/sdk/impl/l3;->f:Lcom/chartboost/sdk/impl/l3;

    iput-object v0, p1, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    :cond_1
    if-nez p2, :cond_2

    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/chartboost/sdk/internal/Model/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/internal/Model/a;->a()V

    .line 14
    iget-object p1, p1, Lcom/chartboost/sdk/internal/Model/a;->y:Lcom/chartboost/sdk/impl/i1;

    if-eqz p1, :cond_3

    .line 15
    iget-object p2, p0, Lcom/chartboost/sdk/impl/n1;->b:Lcom/chartboost/sdk/impl/g1;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/g1;->a(Lcom/chartboost/sdk/impl/c1;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 16
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_0

    const/high16 v2, 0x10000000

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p2, 0x10000

    .line 21
    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    const-string p2, "CBURLOpener"

    const-string v1, "Cannot open URL"

    .line 24
    invoke-static {p2, v1, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public b(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    return-void

    :cond_0
    const-string v0, "http"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/n1;->c(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/n1$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/chartboost/sdk/impl/n1$a;-><init>(Lcom/chartboost/sdk/impl/n1;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;)V

    .line 62
    iget-object p1, p0, Lcom/chartboost/sdk/impl/n1;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 63
    :catch_0
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
    .locals 6

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://market.android.com/"

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/chartboost/sdk/internal/Model/a;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Lcom/chartboost/sdk/impl/l3;->g:Lcom/chartboost/sdk/impl/l3;

    iput-object v2, p2, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 10
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-virtual {p0, p2, v2, p3, p1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    return-void

    :cond_1
    const/high16 v3, 0x10000000

    .line 15
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    instance-of v5, p1, Landroid/app/Activity;

    if-nez v5, :cond_2

    .line 17
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    :cond_2
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "market://"

    .line 21
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    :cond_3
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    return-void

    :catch_1
    move-exception p1

    const-string v0, "CBURLOpener"

    const-string v1, "Exception raised openeing an inavld playstore URL"

    .line 41
    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-virtual {p0, p2, v2, p3, p1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    return-void

    .line 46
    :cond_4
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    invoke-virtual {p0, p2, v2, p3, p1}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    return-void
.end method
