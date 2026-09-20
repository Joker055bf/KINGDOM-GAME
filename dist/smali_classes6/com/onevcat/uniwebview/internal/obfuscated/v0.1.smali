.class public final Lcom/onevcat/uniwebview/internal/obfuscated/v0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIFFLjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->a:I

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->d:I

    iput p5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->e:F

    iput p6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->f:F

    iput-object p7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/onevcat/uniwebview/d;

    const-string p1, "it"

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->a:I

    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->b:I

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->c:I

    iget v4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->d:I

    iget v5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->e:F

    iget v6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->f:F

    iget-object v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v0;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/onevcat/uniwebview/d;->a(IIIIFFLjava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
