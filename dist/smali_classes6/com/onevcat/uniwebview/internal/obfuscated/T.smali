.class public final Lcom/onevcat/uniwebview/internal/obfuscated/T;
.super Lcom/onevcat/uniwebview/internal/obfuscated/X;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "webViewName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ChannelMessage"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/X;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
