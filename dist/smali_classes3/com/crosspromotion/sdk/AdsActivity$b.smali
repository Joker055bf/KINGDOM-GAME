.class Lcom/crosspromotion/sdk/AdsActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/AdsActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/AdsActivity;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/AdsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-static {v0}, Lcom/crosspromotion/sdk/AdsActivity;->a(Lcom/crosspromotion/sdk/AdsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-static {v0}, Lcom/crosspromotion/sdk/AdsActivity;->b(Lcom/crosspromotion/sdk/AdsActivity;)Lcom/openmediation/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-static {v0}, Lcom/crosspromotion/sdk/AdsActivity;->b(Lcom/crosspromotion/sdk/AdsActivity;)Lcom/openmediation/sdk/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-static {v0}, Lcom/crosspromotion/sdk/AdsActivity;->b(Lcom/crosspromotion/sdk/AdsActivity;)Lcom/openmediation/sdk/a/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-static {v0}, Lcom/crosspromotion/sdk/AdsActivity;->b(Lcom/crosspromotion/sdk/AdsActivity;)Lcom/openmediation/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity$b;->a:Lcom/crosspromotion/sdk/AdsActivity;

    invoke-static {v0}, Lcom/crosspromotion/sdk/AdsActivity;->b(Lcom/crosspromotion/sdk/AdsActivity;)Lcom/openmediation/sdk/a/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
