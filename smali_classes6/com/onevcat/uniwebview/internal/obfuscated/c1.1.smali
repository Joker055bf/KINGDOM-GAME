.class public final Lcom/onevcat/uniwebview/internal/obfuscated/c1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c1;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c1;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    const-string v0, ""

    .line 82
    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 84
    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/a;->loadUrl(Ljava/lang/String;)V

    .line 85
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
