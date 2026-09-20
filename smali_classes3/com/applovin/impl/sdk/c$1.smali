.class Lcom/applovin/impl/sdk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/c;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/applovin/impl/sdk/c$1;->a:Lcom/applovin/impl/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/applovin/impl/sdk/c$1;->a:Lcom/applovin/impl/sdk/c;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c;->c()V

    .line 57
    iget-object v0, p0, Lcom/applovin/impl/sdk/c$1;->a:Lcom/applovin/impl/sdk/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->V()Lcom/applovin/impl/sdk/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c$1;->a:Lcom/applovin/impl/sdk/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d;->a(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method
