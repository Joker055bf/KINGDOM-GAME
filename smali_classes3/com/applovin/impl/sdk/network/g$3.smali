.class Lcom/applovin/impl/sdk/network/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/network/g;->a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/network/j;

.field final synthetic b:Lcom/applovin/sdk/AppLovinPostbackListener;

.field final synthetic c:Lcom/applovin/impl/sdk/network/g;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/g$3;->a:Lcom/applovin/impl/sdk/network/j;

    iput-object p3, p0, Lcom/applovin/impl/sdk/network/g$3;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/g;->c(Lcom/applovin/impl/sdk/network/g;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/g;->c(Lcom/applovin/impl/sdk/network/g;)Lcom/applovin/impl/sdk/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to submit postback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/g$3;->a:Lcom/applovin/impl/sdk/network/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; will retry later..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManagerV2"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g$3;->a:Lcom/applovin/impl/sdk/network/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/network/g;->d(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;)V

    .line 252
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;I)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g$3;->a:Lcom/applovin/impl/sdk/network/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/network/g;->c(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;)V

    .line 235
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/g;->c(Lcom/applovin/impl/sdk/network/g;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/g;->c(Lcom/applovin/impl/sdk/network/g;)Lcom/applovin/impl/sdk/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully submit postback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/g$3;->a:Lcom/applovin/impl/sdk/network/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManagerV2"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->c:Lcom/applovin/impl/sdk/network/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/g;->d(Lcom/applovin/impl/sdk/network/g;)V

    .line 241
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g$3;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V

    return-void
.end method
