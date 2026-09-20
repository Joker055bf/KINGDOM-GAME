.class public final Lcom/onevcat/uniwebview/internal/obfuscated/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onevcat/uniwebview/d;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/d;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k3;->a:Lcom/onevcat/uniwebview/d;

    return-void
.end method


# virtual methods
.method public final postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/k3;->a:Lcom/onevcat/uniwebview/d;

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/d;->b(Ljava/lang/String;)V

    return-void
.end method
