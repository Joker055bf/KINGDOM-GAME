.class public final Lcom/onevcat/uniwebview/internal/obfuscated/H2;
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
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/H2;->a:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/H2;->a:Z

    .line 699
    iget-boolean v1, p1, Lcom/onevcat/uniwebview/d;->k:Z

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    iput-boolean v0, p1, Lcom/onevcat/uniwebview/d;->k:Z

    if-eqz v0, :cond_1

    .line 705
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/d;->d()V

    .line 706
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/d;->e()V

    goto :goto_0

    .line 709
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/onevcat/uniwebview/d;->a(Ljava/util/List;F)V

    .line 710
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
