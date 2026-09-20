.class public final Lcom/onevcat/uniwebview/internal/obfuscated/r1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/r1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/r1;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/r1;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 4
    :cond_0
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    const-string v3, "activity"

    .line 5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/r1;->b:Ljava/lang/String;

    .line 8
    new-instance v4, Lcom/onevcat/uniwebview/internal/obfuscated/j;

    new-instance v5, Lcom/onevcat/uniwebview/internal/obfuscated/i;

    invoke-direct {v5}, Lcom/onevcat/uniwebview/internal/obfuscated/i;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/onevcat/uniwebview/internal/obfuscated/j;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/i;)V

    .line 9
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/j;)V

    .line 10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
