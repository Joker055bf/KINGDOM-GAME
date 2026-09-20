.class Lcom/openmediation/sdk/a/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/a/c;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c$d;->a:Lcom/openmediation/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/a/c;Lcom/openmediation/sdk/a/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/c$d;-><init>(Lcom/openmediation/sdk/a/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$d;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->g(Lcom/openmediation/sdk/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$d;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->b(Lcom/openmediation/sdk/a/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$d;->a:Lcom/openmediation/sdk/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Z)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$d;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->h(Lcom/openmediation/sdk/a/c;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/c$d;->a:Lcom/openmediation/sdk/a/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Z)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
