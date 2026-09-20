.class Lcom/applovin/impl/b/a/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/a/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/a/b$1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/a/b$1;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/applovin/impl/b/a/b$1$1;->a:Lcom/applovin/impl/b/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/applovin/impl/b/a/b$1$1;->a:Lcom/applovin/impl/b/a/b$1;

    iget-object v0, v0, Lcom/applovin/impl/b/a/b$1;->c:Lcom/applovin/impl/b/a/b;

    iget-object v1, p0, Lcom/applovin/impl/b/a/b$1$1;->a:Lcom/applovin/impl/b/a/b$1;

    iget-object v1, v1, Lcom/applovin/impl/b/a/b$1;->a:Landroid/app/Activity;

    new-instance v2, Lcom/applovin/impl/b/a/b$1$1$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/b/a/b$1$1$1;-><init>(Lcom/applovin/impl/b/a/b$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/b/a/b;->a(Lcom/applovin/impl/b/a/b;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
