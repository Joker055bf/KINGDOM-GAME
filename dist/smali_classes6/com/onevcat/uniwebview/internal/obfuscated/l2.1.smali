.class public final Lcom/onevcat/uniwebview/internal/obfuscated/l2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/l2;->a:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/l2;->a:Z

    .line 1089
    iget-object v1, p1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    .line 1090
    iget-object v2, p1, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v0, p1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1095
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
