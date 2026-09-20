.class public final Lcom/onevcat/uniwebview/internal/obfuscated/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/onevcat/uniwebview/internal/obfuscated/g;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/g;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/g;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/g;->b:Lcom/onevcat/uniwebview/internal/obfuscated/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/g;->a:Ljava/util/HashMap;

    return-void
.end method
