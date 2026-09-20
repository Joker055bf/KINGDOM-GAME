.class public Lcom/chartboost/sdk/impl/h6;
.super Lcom/chartboost/sdk/impl/c2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/impl/k2;Lcom/chartboost/sdk/impl/f6;Lcom/chartboost/sdk/impl/p1;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/chartboost/sdk/impl/c2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/impl/k2;Lcom/chartboost/sdk/impl/f6;Lcom/chartboost/sdk/impl/p1;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3
    invoke-interface {p3}, Lcom/chartboost/sdk/impl/k2;->b()V

    .line 4
    invoke-interface {p3}, Lcom/chartboost/sdk/impl/k2;->a()V

    return-void
.end method
