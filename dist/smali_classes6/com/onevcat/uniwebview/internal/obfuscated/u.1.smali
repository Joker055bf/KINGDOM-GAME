.class public final Lcom/onevcat/uniwebview/internal/obfuscated/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/onevcat/uniwebview/internal/obfuscated/u;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/u;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/u;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/u;->b:Lcom/onevcat/uniwebview/internal/obfuscated/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/u;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/onevcat/uniwebview/internal/obfuscated/h3;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    return-object p1
.end method
