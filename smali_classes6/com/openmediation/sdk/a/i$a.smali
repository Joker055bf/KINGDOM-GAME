.class Lcom/openmediation/sdk/a/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/i;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/a/i;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/i$a;->a:Lcom/openmediation/sdk/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/a/j;->c()Lcom/openmediation/sdk/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromotionAd not showing, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i$a;->a:Lcom/openmediation/sdk/a/i;

    invoke-static {v1}, Lcom/openmediation/sdk/a/i;->a(Lcom/openmediation/sdk/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/a/j;->c()Lcom/openmediation/sdk/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/j;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromotionAd hide placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i$a;->a:Lcom/openmediation/sdk/a/i;

    invoke-static {v1}, Lcom/openmediation/sdk/a/i;->b(Lcom/openmediation/sdk/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/i$a;->a:Lcom/openmediation/sdk/a/i;

    invoke-static {v0}, Lcom/openmediation/sdk/a/i;->c(Lcom/openmediation/sdk/a/i;)V

    return-void
.end method
