.class public abstract Lcom/chartboost/sdk/impl/e6;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/chartboost/sdk/impl/c4;

.field public b:Lcom/chartboost/sdk/impl/s1;

.field public c:Lcom/chartboost/sdk/impl/q1;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Landroid/content/Context;

.field public final k:Lcom/chartboost/sdk/impl/f6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/f6;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/e6;->a:Lcom/chartboost/sdk/impl/c4;

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/e6;->e:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/chartboost/sdk/impl/e6;->f:I

    iput v0, p0, Lcom/chartboost/sdk/impl/e6;->g:I

    .line 9
    iput v0, p0, Lcom/chartboost/sdk/impl/e6;->h:I

    iput v0, p0, Lcom/chartboost/sdk/impl/e6;->i:I

    .line 15
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e6;->j:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e6;->k:Lcom/chartboost/sdk/impl/f6;

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final a(ZLcom/chartboost/sdk/internal/Model/a;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e6;->a:Lcom/chartboost/sdk/impl/c4;

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/e6;->a(Landroid/app/Activity;Lcom/chartboost/sdk/internal/Model/a;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/chartboost/sdk/internal/Model/a;)Z
    .locals 3

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/e6;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/e6;->i:I

    if-ne v0, v1, :cond_6

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    move v1, v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    .line 19
    :cond_4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v0, p1

    .line 25
    :cond_5
    iput v0, p0, Lcom/chartboost/sdk/impl/e6;->h:I

    .line 26
    iput v1, p0, Lcom/chartboost/sdk/impl/e6;->i:I

    .line 29
    :cond_6
    iget p1, p0, Lcom/chartboost/sdk/impl/e6;->h:I

    iget v0, p0, Lcom/chartboost/sdk/impl/e6;->i:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/chartboost/sdk/impl/e6;->a(Lcom/chartboost/sdk/internal/Model/a;II)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/chartboost/sdk/internal/Model/a;II)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 30
    :cond_0
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/e6;->e:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/e6;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/c4;

    move-result-object p1

    .line 34
    iget v2, p0, Lcom/chartboost/sdk/impl/e6;->f:I

    if-ne v2, p2, :cond_2

    iget v2, p0, Lcom/chartboost/sdk/impl/e6;->g:I

    if-ne v2, p3, :cond_2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e6;->a:Lcom/chartboost/sdk/impl/c4;

    if-eqz v2, :cond_2

    if-ne v2, p1, :cond_2

    return v0

    .line 37
    :cond_2
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/e6;->e:Z

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e6;->k:Lcom/chartboost/sdk/impl/f6;

    invoke-interface {v2, p1}, Lcom/chartboost/sdk/impl/f6;->a(Lcom/chartboost/sdk/impl/c4;)V

    .line 41
    new-instance v2, Lcom/chartboost/sdk/impl/e6$a;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/e6$a;-><init>(Lcom/chartboost/sdk/impl/e6;)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 47
    iput p2, p0, Lcom/chartboost/sdk/impl/e6;->f:I

    .line 48
    iput p3, p0, Lcom/chartboost/sdk/impl/e6;->g:I

    .line 49
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e6;->a:Lcom/chartboost/sdk/impl/c4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "test"

    const-string p3, "Exception raised while layouting Subviews"

    .line 52
    invoke-static {p2, p3, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 54
    :goto_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/e6;->e:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e6;->k:Lcom/chartboost/sdk/impl/f6;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/f6;->onDetachedFromWindow()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/e6;->h:I

    .line 3
    iput p2, p0, Lcom/chartboost/sdk/impl/e6;->i:I

    return-void
.end method
