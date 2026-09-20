.class public final Lcom/onevcat/uniwebview/internal/obfuscated/h1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/onevcat/uniwebview/internal/obfuscated/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/h1;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h1;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/h1;->a:Lcom/onevcat/uniwebview/internal/obfuscated/h1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p1, Lcom/onevcat/uniwebview/d;->k:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/d;->e()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignored transparency mask refresh for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    const-string v2, " because feature is disabled"

    const-string v3, "message"

    .line 7
    invoke-static {v1, p1, v2, v0, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 9
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
