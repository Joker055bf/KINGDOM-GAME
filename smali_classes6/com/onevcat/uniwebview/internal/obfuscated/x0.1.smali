.class public final Lcom/onevcat/uniwebview/internal/obfuscated/x0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/x0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/x0;->b:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/d;->b:Lcom/onevcat/uniwebview/internal/obfuscated/d;

    .line 2
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/x0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "name"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, v0, Lcom/onevcat/uniwebview/internal/obfuscated/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/internal/obfuscated/G;

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/x0;->b:Z

    .line 33
    iput-boolean v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/G;->i:Z

    .line 34
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
