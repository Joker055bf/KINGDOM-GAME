.class public final Lcom/onevcat/uniwebview/internal/obfuscated/G1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->b:F

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->c:F

    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->d:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/u;->b:Lcom/onevcat/uniwebview/internal/obfuscated/u;

    .line 2
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/u;->a(Ljava/lang/String;)Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->b:F

    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->c:F

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/G1;->d:F

    .line 4
    iget-boolean v4, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz v4, :cond_0

    .line 5
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Safe browsing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    const-string v3, "\' already disposed. Skip setToolbarColor"

    const-string v4, "message"

    .line 7
    invoke-static {v2, v0, v3, v1, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 9
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->l:Ljava/lang/Integer;

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
