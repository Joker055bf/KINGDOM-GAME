.class public final Lcom/chartboost/sdk/ads/Interstitial$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/ads/Interstitial;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/Mediation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/p3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/p3;",
        "a",
        "()Lcom/chartboost/sdk/impl/p3;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/ads/Interstitial;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/ads/Interstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/ads/Interstitial$a;->a:Lcom/chartboost/sdk/ads/Interstitial;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/p3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/ads/Interstitial$a;->a:Lcom/chartboost/sdk/ads/Interstitial;

    invoke-static {v0}, Lcom/chartboost/sdk/ads/Interstitial;->access$getMediation$p(Lcom/chartboost/sdk/ads/Interstitial;)Lcom/chartboost/sdk/Mediation;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/Mediation;)Lcom/chartboost/sdk/impl/p3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/ads/Interstitial$a;->a()Lcom/chartboost/sdk/impl/p3;

    move-result-object v0

    return-object v0
.end method
