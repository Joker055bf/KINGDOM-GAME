.class public final Lcom/onevcat/uniwebview/internal/obfuscated/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onevcat/uniwebview/internal/obfuscated/W2;


# instance fields
.field public final a:Lcom/onevcat/uniwebview/internal/obfuscated/b0;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/internal/obfuscated/b0;)V
    .locals 1

    const-string v0, "popupProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a0;->a:Lcom/onevcat/uniwebview/internal/obfuscated/b0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V
    .locals 2

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a0;->a:Lcom/onevcat/uniwebview/internal/obfuscated/b0;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/b0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/a;

    if-nez v0, :cond_0

    return-void

    .line 980
    :cond_0
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a0;->a:Lcom/onevcat/uniwebview/internal/obfuscated/b0;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/b0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->b:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string v2, ""

    if-nez p1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    const-string v4, "method"

    .line 4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "parameters"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget-object v6, v0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v6, v1, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    .line 489
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->c:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    if-nez p1, :cond_2

    move-object p1, v2

    .line 490
    :cond_2
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    iget-object v0, v0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    .line 975
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/a0;->a:Lcom/onevcat/uniwebview/internal/obfuscated/b0;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/b0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/a;

    if-nez v0, :cond_0

    return-void

    .line 976
    :cond_0
    new-instance v1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    const/4 v3, 0x0

    .line 977
    invoke-direct {v1, v2, p2, p1, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 978
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    return-void
.end method
