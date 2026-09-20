.class public final Lcom/onevcat/uniwebview/internal/obfuscated/k0;
.super Landroid/widget/Toolbar;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public d:Lcom/onevcat/uniwebview/internal/obfuscated/l0;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    const v0, 0x7fffffff

    .line 99
    iput v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->e:I

    const-string v0, ""

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setElevation(F)V

    const/4 v0, -0x1

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 104
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance p1, Landroid/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    const v2, 0x800005

    .line 107
    iput v2, p1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "\u276e"

    .line 110
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->b:Landroid/widget/TextView;

    const-string v2, "\u276f"

    .line 111
    invoke-virtual {p0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->c:Landroid/widget/TextView;

    const-string v3, "Done"

    .line 112
    invoke-virtual {p0, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p0, v4, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(ZZ)V

    .line 116
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x18

    .line 117
    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 119
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    .line 123
    invoke-virtual {p1, v1, v4, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 124
    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/internal/obfuscated/k0;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$button"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a:Landroid/widget/TextView;

    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 20
    iget-object p0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->d:Lcom/onevcat/uniwebview/internal/obfuscated/l0;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/onevcat/uniwebview/d;

    .line 21
    iget-object p0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->l:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "method"

    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parameters"

    const-string v0, ""

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    iget-object p0, p0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {p0, p1, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 508
    iget-object p0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->d:Lcom/onevcat/uniwebview/internal/obfuscated/l0;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/onevcat/uniwebview/d;

    .line 509
    iget-object p0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/a;->c()V

    goto :goto_0

    .line 510
    :cond_1
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 511
    iget-object p0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->d:Lcom/onevcat/uniwebview/internal/obfuscated/l0;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/onevcat/uniwebview/d;

    .line 512
    iget-object p0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 513
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 515
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 521
    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 13
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p1, -0x1000000

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    new-instance p1, Lcom/onevcat/uniwebview/internal/obfuscated/k0$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/k0$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/k0;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final a(FFFF)V
    .locals 1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p4, v0

    float-to-int p4, p4

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 1
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final b(FFFF)V
    .locals 1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p4, v0

    float-to-int p4, p4

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 1
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method public final getDelegate()Lcom/onevcat/uniwebview/internal/obfuscated/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->d:Lcom/onevcat/uniwebview/internal/obfuscated/l0;

    return-object v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->e:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Toolbar;->onMeasure(II)V

    .line 4
    iget p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->e:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMeasuredHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 5
    iget p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->e:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/Toolbar;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public final setDelegate(Lcom/onevcat/uniwebview/internal/obfuscated/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->d:Lcom/onevcat/uniwebview/internal/obfuscated/l0;

    return-void
.end method

.method public final setDoneButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setGoBackButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setGoForwardButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public final setNavigationButtonsShow(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
