.class public final Lcom/onevcat/uniwebview/internal/obfuscated/K;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/onevcat/uniwebview/internal/obfuscated/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/K;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/K;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/K;->a:Lcom/onevcat/uniwebview/internal/obfuscated/K;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    const-string v0, "Channel message bridge injected successfully"

    return-object v0
.end method
