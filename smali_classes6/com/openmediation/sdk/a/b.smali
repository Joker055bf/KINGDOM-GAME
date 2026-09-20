.class public final Lcom/openmediation/sdk/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/a/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/a/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/a/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getClktrackers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getSceneId(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "{scene}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->get()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->instanceFollowRedirects(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/openmediation/sdk/a/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/a/b$a;

    invoke-direct {v0, p1, p0}, Lcom/openmediation/sdk/a/b$a;-><init>(Lcom/crosspromotion/sdk/bean/AdBean;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/a/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/openmediation/sdk/a/b;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getImptrackers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getSceneId(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "{scene}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->get()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->instanceFollowRedirects(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/openmediation/sdk/a/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method
