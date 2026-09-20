.class public final Lcom/onevcat/uniwebview/internal/obfuscated/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/onevcat/uniwebview/d;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/d;IIIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->a:Lcom/onevcat/uniwebview/d;

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->d:I

    iput p5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->e:I

    iput-object p6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->f:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->a:Lcom/onevcat/uniwebview/d;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/onevcat/uniwebview/d;->i:Landroid/view/animation/AnimationSet;

    .line 3
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->b:I

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->c:I

    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->d:I

    iget v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/onevcat/uniwebview/d;->a(IIII)V

    .line 4
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->a:Lcom/onevcat/uniwebview/d;

    .line 5
    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 6
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->q:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g0;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "method"

    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iget-object p1, p1, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {p1, v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
