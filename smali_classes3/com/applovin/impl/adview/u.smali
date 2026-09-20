.class public Lcom/applovin/impl/adview/u;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/u$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/adview/o;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/o;Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/applovin/impl/adview/u;->a:Lcom/applovin/impl/adview/o;

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/u;->setClickable(Z)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/u;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/u;->a(Lcom/applovin/impl/adview/u$a;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/u$a;)V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/applovin/impl/adview/u;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/applovin/impl/adview/u$a;->a()V

    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/u;->a:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p1}, Lcom/applovin/impl/adview/u$a;->b()V

    :cond_2
    return-void

    .line 63
    :cond_3
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/u;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/applovin/impl/adview/u;->b:Z

    if-eqz p1, :cond_4

    .line 68
    invoke-interface {p1}, Lcom/applovin/impl/adview/u$a;->a()V

    :cond_4
    return-void
.end method

.method public b()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/applovin/impl/adview/u;->b:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/applovin/impl/adview/u;->a:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
