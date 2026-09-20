.class public Lcom/chartboost/sdk/impl/f4;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/chartboost/sdk/impl/e6;

.field public final b:Lcom/chartboost/sdk/internal/Model/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/chartboost/sdk/impl/f4;->b:Lcom/chartboost/sdk/internal/Model/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f4;->a:Lcom/chartboost/sdk/impl/e6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f4;->a:Lcom/chartboost/sdk/impl/e6;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f4;->b:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->l()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f4;->a:Lcom/chartboost/sdk/impl/e6;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f4;->a:Lcom/chartboost/sdk/impl/e6;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f4;->b:Lcom/chartboost/sdk/internal/Model/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/e6;->a(ZLcom/chartboost/sdk/internal/Model/a;)V

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f4;->a:Lcom/chartboost/sdk/impl/e6;

    return-object v0
.end method

.method public getImpression()Lcom/chartboost/sdk/internal/Model/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f4;->b:Lcom/chartboost/sdk/internal/Model/a;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f4;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
