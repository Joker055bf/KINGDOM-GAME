.class public final Lcom/onevcat/uniwebview/internal/obfuscated/a2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->a:F

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->b:F

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->c:F

    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->d:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->a:F

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->b:F

    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->c:F

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a2;->d:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    new-instance v4, Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    const/4 v5, 0x0

    .line 156
    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 157
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 158
    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    .line 159
    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    .line 160
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/e0;-><init>(FFFF)V

    .line 166
    iget-object v6, p1, Lcom/onevcat/uniwebview/d;->t:Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    iput-object v4, p1, Lcom/onevcat/uniwebview/d;->t:Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    .line 170
    iget-object v4, p1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a(FFFF)V

    .line 176
    iget-object v4, p1, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 178
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 179
    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    .line 180
    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    .line 182
    iget-object v0, v4, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iput-object v5, v4, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 187
    :goto_0
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/d;->f()V

    .line 188
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
