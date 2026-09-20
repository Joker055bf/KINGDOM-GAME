.class public final Lcom/onevcat/uniwebview/internal/obfuscated/Y0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->d:I

    iput p5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 2
    new-instance v1, Lcom/onevcat/uniwebview/d;

    const-string v2, "activity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->a:Ljava/lang/String;

    new-instance v4, Lcom/onevcat/uniwebview/internal/obfuscated/i;

    invoke-direct {v4}, Lcom/onevcat/uniwebview/internal/obfuscated/i;-><init>()V

    .line 3
    invoke-direct {v1, v0, v3, v4}, Lcom/onevcat/uniwebview/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/i;)V

    .line 4
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0, v6, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 16
    iget-object v5, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    iget-object v5, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 24
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    .line 31
    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->t:Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    .line 32
    iget v7, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->a:F

    .line 33
    iget v8, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->b:F

    .line 34
    iget v9, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->c:F

    .line 35
    iget v6, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->d:F

    .line 36
    invoke-virtual {v4, v7, v8, v9, v6}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a(FFFF)V

    .line 42
    iget-object v4, v1, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    .line 43
    iget-object v6, v1, Lcom/onevcat/uniwebview/d;->t:Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    .line 44
    iget v7, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->a:F

    .line 45
    iget v8, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->b:F

    .line 46
    iget v9, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->c:F

    .line 47
    iget v6, v6, Lcom/onevcat/uniwebview/internal/obfuscated/e0;->d:F

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    .line 49
    invoke-static {v7, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v7

    .line 50
    invoke-static {v8, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    .line 51
    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v9

    .line 52
    invoke-static {v6, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    const/4 v10, 0x4

    new-array v10, v10, [F

    aput v7, v10, v5

    const/4 v5, 0x1

    aput v8, v10, v5

    const/4 v5, 0x2

    aput v9, v10, v5

    const/4 v5, 0x3

    aput v6, v10, v5

    .line 54
    iget-object v5, v4, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    invoke-static {v5, v10}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iput-object v10, v4, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 59
    :goto_0
    sget-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/g;->b:Lcom/onevcat/uniwebview/internal/obfuscated/g;

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "container"

    .line 61
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "name"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v5, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v6, "Adding web view container to manager: "

    const-string v7, "message"

    .line 64
    invoke-static {v6, v3, v5, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    sget-object v7, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v5, v7, v6}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 66
    iget-object v4, v4, Lcom/onevcat/uniwebview/internal/obfuscated/g;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-boolean v3, Lcom/onevcat/uniwebview/internal/obfuscated/C;->e:Z

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    const-string v4, "frameLayout"

    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/b;

    .line 95
    invoke-direct {v2, v3, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/b;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/c3;Landroid/app/Activity;)V

    .line 96
    iput-object v2, v1, Lcom/onevcat/uniwebview/d;->o:Lcom/onevcat/uniwebview/internal/obfuscated/b;

    .line 97
    :cond_1
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->b:I

    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->c:I

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->d:I

    iget v4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/Y0;->e:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/onevcat/uniwebview/d;->a(IIII)V

    .line 98
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
