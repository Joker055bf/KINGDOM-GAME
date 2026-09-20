.class public final Lcom/onevcat/uniwebview/internal/obfuscated/U;
.super Lcom/onevcat/uniwebview/internal/obfuscated/X;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V
    .locals 2

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "__UniWebViewGlobalChannelIdentifier"

    const-string v1, "CookieOperation"

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
