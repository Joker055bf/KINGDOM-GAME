.class final Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;
.super Ljava/lang/Object;
.source "MetaAudienceNetworkAdapter.kt"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->setUp-0E7RQCE(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/facebook/ads/AudienceNetworkAds$InitResult;",
        "kotlin.jvm.PlatformType",
        "onInitialized"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;",
            "Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;->this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;->this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    const-string v2, "result"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$getInitResult-IoAF18A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
