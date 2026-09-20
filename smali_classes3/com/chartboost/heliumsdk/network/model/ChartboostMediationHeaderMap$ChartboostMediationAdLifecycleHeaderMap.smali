.class public final Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;
.super Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;
.source "ChartboostMediationHeaderMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChartboostMediationAdLifecycleHeaderMap"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationHeaderMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationHeaderMap.kt\ncom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J+\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;",
        "loadId",
        "",
        "appSetId",
        "queueId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAppSetId",
        "()Ljava/lang/String;",
        "getLoadId",
        "getQueueId",
        "component1",
        "component2",
        "component3",
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

.field private final loadId:Ljava/lang/String;

.field private final queueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "appSetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    iput-object p1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    .line 24
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    const-string/jumbo v0, "x-mediation-idfv"

    .line 25
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object p2, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/utils/Environment;->getSessionId$Helium_release()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "X-Helium-SessionID"

    invoke-virtual {p0, v0, p2}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p2, "X-Mediation-Load-ID"

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "X-Mediation-Queue-ID"

    .line 28
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 29
    :cond_2
    sget-object p1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getTestMode$Helium_release()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    sget-object p1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getAppId$Helium_release()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Helium-Debug"

    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;
    .locals 1

    const-string v0, "appSetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;

    invoke-direct {v0, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    iget-object p1, p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoadId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    return-object v0
.end method

.method public final getQueueId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChartboostMediationAdLifecycleHeaderMap(loadId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->loadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->appSetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostMediationAdLifecycleHeaderMap;->queueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
