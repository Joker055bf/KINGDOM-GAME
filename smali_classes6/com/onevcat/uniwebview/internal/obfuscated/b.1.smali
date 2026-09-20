.class public final Lcom/onevcat/uniwebview/internal/obfuscated/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

.field public final b:Landroid/app/Activity;

.field public c:I

.field public d:I

.field public final e:Landroid/widget/FrameLayout$LayoutParams;

.field public f:F


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/internal/obfuscated/c3;Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    .line 3
    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->b:Landroid/app/Activity;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/b$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/b;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 26
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->f:F

    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/internal/obfuscated/b;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->b:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 6
    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->d:I

    if-eq v0, v3, :cond_0

    .line 7
    iput v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->d:I

    .line 8
    iput v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->c:I

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->c:I

    if-eq v2, v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->e:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->f:F

    .line 12
    iget-object v4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-static {v4}, Lcom/onevcat/uniwebview/internal/obfuscated/h;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    .line 13
    iget v5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->f:F

    add-float/2addr v5, v4

    .line 14
    iget-object v4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 15
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iget-object v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 17
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v1, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    add-float/2addr v5, v1

    .line 18
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v5, v1

    const/4 v1, 0x0

    .line 19
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 20
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->a:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 22
    iput v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/b;->c:I

    :cond_1
    :goto_0
    return-void
.end method
