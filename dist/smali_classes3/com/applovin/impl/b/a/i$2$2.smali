.class Lcom/applovin/impl/b/a/i$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/a/i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/a/f;

.field final synthetic b:Lcom/applovin/impl/b/a/i$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/a/i$2;Lcom/applovin/impl/b/a/f;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iput-object p2, p0, Lcom/applovin/impl/b/a/i$2$2;->a:Lcom/applovin/impl/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 201
    iget-object p2, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object p2, p2, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;)Lcom/applovin/impl/b/a/d;

    .line 202
    iget-object p2, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object p2, p2, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {p2, v0}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 205
    iget-object p2, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object p2, p2, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$2;->a:Lcom/applovin/impl/b/a/f;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Ljava/lang/String;)Lcom/applovin/impl/b/a/d;

    move-result-object p2

    if-nez p2, :cond_1

    .line 208
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {p1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {p1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string p2, "AppLovinSdk"

    const-string v0, "Consent flow failed to get destination state for TOS/PP alert. Finishing flow..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-virtual {p1}, Lcom/applovin/impl/b/a/i;->b()V

    return-void

    :cond_1
    const-string v0, "12"

    .line 214
    invoke-virtual {p2}, Lcom/applovin/impl/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->t:Lcom/applovin/impl/sdk/c/d;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2$2;->b:Lcom/applovin/impl/b/a/i$2;

    iget-object v1, v1, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-static {v0, p2, v1}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;Landroid/app/Activity;)V

    .line 221
    invoke-virtual {p2}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/b/a/d$a;->a:Lcom/applovin/impl/b/a/d$a;

    if-eq p2, v0, :cond_3

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    return-void
.end method
