.class public Lcom/chartboost/sdk/impl/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/l1$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/chartboost/sdk/impl/o1;

.field public c:Lcom/chartboost/sdk/view/CBImpressionActivity;

.field public d:Lcom/chartboost/sdk/internal/Model/a;

.field public e:Z

.field public f:Lcom/chartboost/sdk/impl/g6;

.field public g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/chartboost/sdk/impl/o1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l1;->e:Z

    .line 17
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1;->g:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/chartboost/sdk/impl/l1;->a:Landroid/os/Handler;

    .line 19
    iput-object p3, p0, Lcom/chartboost/sdk/impl/l1;->b:Lcom/chartboost/sdk/impl/o1;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/chartboost/sdk/impl/g6;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->f:Lcom/chartboost/sdk/impl/g6;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/chartboost/sdk/impl/g6;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/impl/g6;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/g6;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l1;->f:Lcom/chartboost/sdk/impl/g6;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l1;->f:Lcom/chartboost/sdk/impl/g6;

    return-object p1
.end method

.method public a()V
    .locals 1

    const-string v0, "CBUIManager.clearImpressionActivity"

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    return-void
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 4

    .line 10
    iget-object v0, p1, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    sget-object v1, Lcom/chartboost/sdk/impl/l3;->d:Lcom/chartboost/sdk/impl/l3;

    if-ne v0, v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/impl/l3;->c:Lcom/chartboost/sdk/impl/l3;

    if-ne v0, v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/o1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    .line 19
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/i2;

    iget-object v1, p1, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    const-string/jumbo v2, "show_close_before_template_show_error"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/view/CBImpressionActivity;)V
    .locals 1

    const-string v0, "CBUIManager.setImpressionActivity"

    .line 5
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/chartboost/sdk/internal/Model/a;)Z
    .locals 2

    if-eqz p2, :cond_2

    .line 20
    sget-object p1, Lcom/chartboost/sdk/impl/l1$a;->a:[I

    iget-object v0, p2, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/chartboost/sdk/internal/Model/a;->E()Z

    move-result p1

    if-nez p1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error onActivityStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBUIManager"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/impl/o1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/l1;->b(Lcom/chartboost/sdk/internal/Model/a;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "CBUIManager.onDestroyImpl"

    .line 12
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/o1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    :cond_1
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    return-void
.end method

.method public b(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 1

    const-string v0, "CBUIManager.queueDisplayView"

    .line 1
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/internal/Model/a;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/l1;->c(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/l1;->d(Lcom/chartboost/sdk/internal/Model/a;)V

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 4

    const-string v0, "CBUIManager.closeImpressionImpl"

    .line 6
    invoke-static {v0}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    sget-object v2, Lcom/chartboost/sdk/impl/l3;->d:Lcom/chartboost/sdk/impl/l3;

    if-ne v1, v2, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/l1$b;

    sget-object v3, Lcom/chartboost/sdk/impl/m1;->b:Lcom/chartboost/sdk/impl/m1;

    invoke-direct {v2, p0, v3}, Lcom/chartboost/sdk/impl/l1$b;-><init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/m1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "CBUIManager.onStartImpl"

    .line 2
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    instance-of v0, p1, Lcom/chartboost/sdk/view/CBImpressionActivity;

    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/chartboost/sdk/view/CBImpressionActivity;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/l1;->a(Lcom/chartboost/sdk/view/CBImpressionActivity;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l1;->e:Z

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/l1;->a(Landroid/app/Activity;Lcom/chartboost/sdk/internal/Model/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/chartboost/sdk/internal/Model/a;->y()V

    :cond_4
    return-void
.end method

.method public final c(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->b:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/o1;->d(Lcom/chartboost/sdk/internal/Model/a;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lcom/chartboost/sdk/internal/Model/a;->J:Z

    .line 27
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/l1;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    return v1
.end method

.method public d()Lcom/chartboost/sdk/impl/o1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->b:Lcom/chartboost/sdk/impl/o1;

    return-object v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/l1;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/impl/g6;

    move-result-object p1

    const-string v0, "CBUIManager.onStopImpl"

    .line 25
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->b:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/o1;->b(Lcom/chartboost/sdk/internal/Model/a;)V

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 18
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void

    .line 22
    :cond_2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 23
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/l1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1;->c:Lcom/chartboost/sdk/view/CBImpressionActivity;

    return-object v0
.end method

.method public e(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1;->g:Landroid/content/Context;

    const-class v2, Lcom/chartboost/sdk/view/CBImpressionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isChartboost"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/l1;->e:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CBUIManager"

    const-string v1, "Please add CBImpressionActivity in AndroidManifest.xml following README.md instructions."

    .line 10
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l1;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 13
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    :goto_0
    return-void
.end method

.method public f()Lcom/chartboost/sdk/internal/Model/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o1;->a()Lcom/chartboost/sdk/impl/f4;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f4;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f4;->getImpression()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    const-string v0, "CBUIManager.onBackPressedImpl"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->b()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    const-string v0, "CBUIManager.onCreateImpl"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->l()V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "CBUIManager.onPauseImpl"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->v()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "CBUIManager.onResumeImpl"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/l1;->f()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->x()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    const-string v0, "CBUIManager.onStop"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/m5;->a(Ljava/lang/String;)V

    return-void
.end method
