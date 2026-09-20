.class public final Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;
.super Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;
.source "ChartboostMediationHeaderMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChartboostQueueRequestMediationHeaderMap"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;",
        "queueId",
        "",
        "appSetId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getAppSetId",
        "()Ljava/lang/String;",
        "getQueueId",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appSetId:Ljava/lang/String;

.field private final queueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "queueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    iput-object p1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 92
    sget-object v1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/utils/Environment;->getSessionId$Helium_release()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "X-Helium-SessionID"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "x-mediation-idfv"

    .line 93
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "X-Mediation-Queue-ID"

    .line 94
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 91
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->putAll(Ljava/util/Map;)V

    .line 97
    sget-object p1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getTestMode$Helium_release()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    sget-object p1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getAppId$Helium_release()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Helium-Debug"

    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic copy$default(Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;
    .locals 1

    const-string v0, "queueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    iget-object p1, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getQueueId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChartboostQueueRequestMediationHeaderMap(queueId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->queueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;->appSetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
