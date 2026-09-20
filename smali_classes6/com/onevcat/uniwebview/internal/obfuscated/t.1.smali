.class public final Lcom/onevcat/uniwebview/internal/obfuscated/t;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/internal/obfuscated/h3;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/t;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-boolean p1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz p1, :cond_1

    .line 467
    :try_start_0
    iget-object p1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :cond_1
    iput-object p2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->e:Landroidx/browser/customtabs/CustomTabsClient;

    .line 473
    iget-object p1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->x:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x0

    .line 474
    invoke-virtual {p2, v1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 476
    :cond_2
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a()V

    .line 477
    iget-boolean p1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->p:Z

    if-eqz p1, :cond_3

    .line 478
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b()V

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->e:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->h:Z

    :cond_0
    return-void
.end method
