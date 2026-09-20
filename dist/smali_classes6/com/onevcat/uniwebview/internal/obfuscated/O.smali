.class public final Lcom/onevcat/uniwebview/internal/obfuscated/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onevcat/uniwebview/a;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/a;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/O;->a:Lcom/onevcat/uniwebview/a;

    return-void
.end method


# virtual methods
.method public final postMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "messageProvider"

    const-string v1, "messageJson"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v2, "Received channel message: %s"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/T;

    iget-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/O;->a:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/T;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/internal/obfuscated/V2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/onevcat/uniwebview/internal/obfuscated/V2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/X;)Lcom/onevcat/uniwebview/internal/obfuscated/Y;

    move-result-object p1

    .line 8
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/M;

    invoke-direct {v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/M;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/Y;)V

    .line 9
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, p1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 35
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/N;

    invoke-direct {v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/N;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, p1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method
