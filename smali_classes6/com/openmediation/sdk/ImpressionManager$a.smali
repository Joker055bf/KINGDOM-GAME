.class Lcom/openmediation/sdk/ImpressionManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/ImpressionManager;->send(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/utils/error/Error;

.field final synthetic b:Lcom/openmediation/sdk/ImpressionData;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/error/Error;Lcom/openmediation/sdk/ImpressionData;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/ImpressionManager$a;->a:Lcom/openmediation/sdk/utils/error/Error;

    iput-object p2, p0, Lcom/openmediation/sdk/ImpressionManager$a;->b:Lcom/openmediation/sdk/ImpressionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/openmediation/sdk/ImpressionManager;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/ImpressionDataListener;

    iget-object v2, p0, Lcom/openmediation/sdk/ImpressionManager$a;->a:Lcom/openmediation/sdk/utils/error/Error;

    iget-object v3, p0, Lcom/openmediation/sdk/ImpressionManager$a;->b:Lcom/openmediation/sdk/ImpressionData;

    invoke-interface {v1, v2, v3}, Lcom/openmediation/sdk/ImpressionDataListener;->onImpression(Lcom/openmediation/sdk/utils/error/Error;Lcom/openmediation/sdk/ImpressionData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
