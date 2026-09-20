.class public final Lcom/onevcat/uniwebview/internal/obfuscated/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/onevcat/uniwebview/d;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/d;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h0;->a:Lcom/onevcat/uniwebview/d;

    iput-boolean p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h0;->b:Z

    iput-object p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h0;->c:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h0;->a:Lcom/onevcat/uniwebview/d;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/onevcat/uniwebview/d;->i:Landroid/view/animation/AnimationSet;

    .line 3
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h0;->b:Z

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h0;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/onevcat/uniwebview/d;->a(Ljava/lang/String;Z)V

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
