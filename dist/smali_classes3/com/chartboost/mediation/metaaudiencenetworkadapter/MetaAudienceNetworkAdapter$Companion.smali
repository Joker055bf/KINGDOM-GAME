.class public final Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;
.super Ljava/lang/Object;
.source "MetaAudienceNetworkAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R0\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;",
        "",
        "()V",
        "value",
        "",
        "",
        "placementIds",
        "getPlacementIds",
        "()Ljava/util/List;",
        "setPlacementIds",
        "(Ljava/util/List;)V",
        "",
        "testMode",
        "getTestMode",
        "()Z",
        "setTestMode",
        "(Z)V",
        "MetaAudienceNetworkAdapter_remoteRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlacementIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$getPlacementIds$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTestMode()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$getTestMode$cp()Z

    move-result v0

    return v0
.end method

.method public final setPlacementIds(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$setPlacementIds$cp(Ljava/util/List;)V

    .line 57
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    .line 58
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->CUSTOM:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Meta Audience Network placement IDs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "not provided for initialization."

    goto :goto_0

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "provided for initialization: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    return-void
.end method

.method public final setTestMode(Z)V
    .locals 3

    .line 39
    invoke-static {p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$setTestMode$cp(Z)V

    .line 40
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setTestMode(Z)V

    .line 41
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    .line 42
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->CUSTOM:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    if-eqz p1, :cond_0

    const-string p1, "enabled. Remember to disable it before publishing."

    goto :goto_0

    :cond_0
    const-string p1, "disabled."

    :goto_0
    const-string v2, "Meta Audience Network test mode is "

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    return-void
.end method
