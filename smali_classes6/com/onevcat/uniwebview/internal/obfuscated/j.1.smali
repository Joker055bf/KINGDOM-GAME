.class public final Lcom/onevcat/uniwebview/internal/obfuscated/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onevcat/uniwebview/internal/obfuscated/l3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/onevcat/uniwebview/internal/obfuscated/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/i;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j;->b:Lcom/onevcat/uniwebview/internal/obfuscated/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j;->b:Lcom/onevcat/uniwebview/internal/obfuscated/i;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/i;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method
