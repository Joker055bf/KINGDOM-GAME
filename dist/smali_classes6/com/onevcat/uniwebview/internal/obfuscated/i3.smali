.class public final Lcom/onevcat/uniwebview/internal/obfuscated/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/onevcat/uniwebview/internal/obfuscated/i3;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/internal/obfuscated/i3;-><init>(FFFFFI)V

    sput-object v7, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->g:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    return-void
.end method

.method public constructor <init>(FFFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    .line 3
    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    .line 4
    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    .line 5
    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    .line 6
    iput p5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    .line 7
    iput p6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    iget v3, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    iget v3, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    iget v3, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    iget v3, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    iget v3, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    iget p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShadowStyle(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
