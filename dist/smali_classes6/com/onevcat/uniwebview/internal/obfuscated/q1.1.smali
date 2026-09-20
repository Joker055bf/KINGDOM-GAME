.class public final Lcom/onevcat/uniwebview/internal/obfuscated/q1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/q1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/q1;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/q1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/u;->a(Ljava/lang/String;)Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/q1;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/q1;->b:Ljava/lang/String;

    const-string v2, "url"

    .line 5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-boolean v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz v2, :cond_1

    .line 584
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Safe browsing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    const-string v3, "\' already disposed. Skip setUrl"

    const-string v4, "message"

    .line 586
    invoke-static {v2, v0, v3, v1, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->c:Ljava/lang/String;

    .line 589
    iput-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->c:Ljava/lang/String;

    .line 590
    iget-object v3, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->y:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    iput-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->y:Ljava/lang/String;

    .line 592
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a()V

    .line 593
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
