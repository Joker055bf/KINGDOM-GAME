.class Lcom/applovin/impl/sdk/e/x$1;
.super Lcom/applovin/impl/sdk/e/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/e/u<",
        "Lcom/applovin/impl/sdk/utils/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/e/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/x;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/e/u;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/applovin/impl/sdk/utils/t;)V
    .locals 2

    .line 68
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->h:Lcom/applovin/impl/sdk/y;

    iget-object p3, p0, Lcom/applovin/impl/sdk/e/x$1;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to resolve VAST wrapper. Server returned "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/e/x;->a(Lcom/applovin/impl/sdk/e/x;I)V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p3, Lcom/applovin/impl/sdk/utils/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/x$1;->a(ILjava/lang/String;Lcom/applovin/impl/sdk/utils/t;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/utils/t;I)V
    .locals 2

    .line 59
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-static {p2}, Lcom/applovin/impl/sdk/e/x;->a(Lcom/applovin/impl/sdk/e/x;)Lcom/applovin/impl/c/e;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/x;->b(Lcom/applovin/impl/sdk/e/x;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    iget-object v1, v1, Lcom/applovin/impl/sdk/e/x;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/r;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/applovin/impl/sdk/utils/t;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/e/x$1;->a(Lcom/applovin/impl/sdk/utils/t;I)V

    return-void
.end method
