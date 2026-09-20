.class Lcom/applovin/impl/b/a/i$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/a/i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/a/i$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/a/i$2;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/applovin/impl/b/a/i$2$1;->a:Lcom/applovin/impl/b/a/i$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$1;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2$1;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v1, v1, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2$1;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v2, v2, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v2}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->x()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;Landroid/app/Activity;)V

    return-void
.end method
