.class public final Lcom/onevcat/uniwebview/internal/obfuscated/S;
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

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/S;->a:Lcom/onevcat/uniwebview/a;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "messageProvider"

    const-string v1, "messageJson"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v2, "Received sync channel message: %s"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/T;

    iget-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/S;->a:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v3}, Lcom/onevcat/uniwebview/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/T;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/internal/obfuscated/V2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/onevcat/uniwebview/internal/obfuscated/V2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/X;)Lcom/onevcat/uniwebview/internal/obfuscated/Y;

    move-result-object p1

    .line 9
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/P;

    invoke-direct {v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/P;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/Y;)V

    .line 10
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v3, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/Y;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 36
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 37
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/Q;

    invoke-direct {v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/Q;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"error\": \"Failed to process message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
