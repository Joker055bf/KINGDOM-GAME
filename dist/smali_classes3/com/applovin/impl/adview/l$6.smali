.class Lcom/applovin/impl/adview/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/l;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/l;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/l;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v0}, Lcom/applovin/impl/adview/l;->e(Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v0}, Lcom/applovin/impl/adview/l;->d(Lcom/applovin/impl/adview/l;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v0}, Lcom/applovin/impl/adview/l;->e(Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/i;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v0}, Lcom/applovin/impl/adview/l;->e(Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/i;->bringToFront()V

    .line 268
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 270
    new-instance v1, Lcom/applovin/impl/adview/l$6$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/l$6$1;-><init>(Lcom/applovin/impl/adview/l$6;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    iget-object v1, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v1}, Lcom/applovin/impl/adview/l;->e(Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/i;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 289
    iget-object v1, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v1}, Lcom/applovin/impl/adview/l;->f(Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v1}, Lcom/applovin/impl/adview/l;->f(Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "ExpandedAdDialog"

    const-string v3, "Unable to fade in close button"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/l$6;->a:Lcom/applovin/impl/adview/l;

    invoke-static {v0}, Lcom/applovin/impl/adview/l;->d(Lcom/applovin/impl/adview/l;)V

    :goto_0
    return-void
.end method
