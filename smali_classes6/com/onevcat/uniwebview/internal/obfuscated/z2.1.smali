.class public final Lcom/onevcat/uniwebview/internal/obfuscated/z2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->a:F

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->b:F

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->c:F

    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->d:F

    iput p5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->e:F

    iput p6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->f:F

    iput p7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->g:F

    iput p8, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->h:F

    iput p9, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->i:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->a:F

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->b:F

    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->c:F

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->d:F

    iget v4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->e:F

    iget v5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->f:F

    iget v9, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->g:F

    iget v10, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->h:F

    iget v6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/z2;->i:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 173
    invoke-static {v3, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v3, v11

    .line 174
    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 175
    invoke-static {v0, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    mul-float/2addr v0, v11

    .line 176
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 177
    invoke-static {v1, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    mul-float/2addr v1, v11

    .line 178
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 179
    invoke-static {v2, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    mul-float/2addr v2, v11

    .line 180
    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 181
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 188
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    .line 189
    invoke-static {v5, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 190
    invoke-static {v4, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    .line 191
    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v11

    move-object v6, v0

    move v7, v1

    .line 192
    invoke-direct/range {v6 .. v12}, Lcom/onevcat/uniwebview/internal/obfuscated/i3;-><init>(FFFFFI)V

    .line 200
    iget-object v1, p1, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    invoke-virtual {v1, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->setShadowStyle(Lcom/onevcat/uniwebview/internal/obfuscated/i3;)V

    .line 201
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/d;->f()V

    .line 202
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
