.class public final Lcom/onevcat/uniwebview/internal/obfuscated/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onevcat/uniwebview/internal/obfuscated/m3;


# static fields
.field public static final a:Lcom/onevcat/uniwebview/internal/obfuscated/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/q;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/q;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/q;->a:Lcom/onevcat/uniwebview/internal/obfuscated/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->p:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "method"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payload"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/q;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "method"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parameters"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
