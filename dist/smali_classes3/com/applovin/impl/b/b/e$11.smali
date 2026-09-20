.class Lcom/applovin/impl/b/b/e$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/b/e;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/applovin/impl/b/a/h;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/b/b/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/b/e$a;

.field final synthetic b:Lcom/applovin/impl/b/b/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/b/e;Lcom/applovin/impl/b/b/e$a;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/applovin/impl/b/b/e$11;->b:Lcom/applovin/impl/b/b/e;

    iput-object p2, p0, Lcom/applovin/impl/b/b/e$11;->a:Lcom/applovin/impl/b/b/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/applovin/impl/b/b/e$11;->b:Lcom/applovin/impl/b/b/e;

    invoke-static {p1}, Lcom/applovin/impl/b/b/e;->a(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/b/b/g;->getPersonalizedAdvertisingSwitch()Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 192
    iget-object v0, p0, Lcom/applovin/impl/b/b/e$11;->b:Lcom/applovin/impl/b/b/e;

    invoke-static {v0}, Lcom/applovin/impl/b/b/e;->a(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/g;->getAnalyticsPurposesSwitch()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/applovin/impl/b/b/e$11;->b:Lcom/applovin/impl/b/b/e;

    invoke-virtual {v1}, Lcom/applovin/impl/b/b/e;->dismiss()V

    .line 196
    iget-object v1, p0, Lcom/applovin/impl/b/b/e$11;->a:Lcom/applovin/impl/b/b/e$a;

    invoke-interface {v1, p1, v0}, Lcom/applovin/impl/b/b/e$a;->a(ZZ)V

    return-void
.end method
