.class public final Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;
.super Ljava/lang/Object;
.source "MetricsRequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;,
        Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 >2\u00020\u0001:\u0002=>B\u00a3\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0001\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0002\u0010\u0017B\u008b\u0001\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0018J!\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u00c7\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR \u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010 \u0012\u0004\u0008\u001d\u0010\u001a\u001a\u0004\u0008\u001e\u0010\u001fR \u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010 \u0012\u0004\u0008!\u0010\u001a\u001a\u0004\u0008\"\u0010\u001fR \u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010 \u0012\u0004\u0008#\u0010\u001a\u001a\u0004\u0008$\u0010\u001fR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008%\u0010\u001a\u001a\u0004\u0008&\u0010\'R\"\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010\u001a\u001a\u0004\u0008)\u0010*R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010\u001a\u001a\u0004\u0008,\u0010\u001cR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010\u001a\u001a\u0004\u0008.\u0010\u001cR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u001a\u001a\u0004\u00080\u0010\u001cR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00081\u0010\u001a\u001a\u0004\u00082\u00103R \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010 \u0012\u0004\u00084\u0010\u001a\u001a\u0004\u00085\u0010\u001f\u00a8\u0006?"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
        "",
        "seen1",
        "",
        "auctionId",
        "",
        "queueId",
        "placementType",
        "size",
        "Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;",
        "start",
        "",
        "end",
        "duration",
        "backgroundDurationMs",
        "result",
        "metrics",
        "",
        "Lcom/chartboost/heliumsdk/network/model/MetricsData;",
        "error",
        "Lcom/chartboost/heliumsdk/domain/MetricsError;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;)V",
        "getAuctionId$annotations",
        "()V",
        "getAuctionId",
        "()Ljava/lang/String;",
        "getBackgroundDurationMs$annotations",
        "getBackgroundDurationMs",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getDuration$annotations",
        "getDuration",
        "getEnd$annotations",
        "getEnd",
        "getError$annotations",
        "getError",
        "()Lcom/chartboost/heliumsdk/domain/MetricsError;",
        "getMetrics$annotations",
        "getMetrics",
        "()Ljava/util/Set;",
        "getPlacementType$annotations",
        "getPlacementType",
        "getQueueId$annotations",
        "getQueueId",
        "getResult$annotations",
        "getResult",
        "getSize$annotations",
        "getSize",
        "()Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;",
        "getStart$annotations",
        "getStart",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;


# instance fields
.field private final auctionId:Ljava/lang/String;

.field private final backgroundDurationMs:Ljava/lang/Long;

.field private final duration:Ljava/lang/Long;

.field private final end:Ljava/lang/Long;

.field private final error:Lcom/chartboost/heliumsdk/domain/MetricsError;

.field private final metrics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/network/model/MetricsData;",
            ">;"
        }
    .end annotation
.end field

.field private final placementType:Ljava/lang/String;

.field private final queueId:Ljava/lang/String;

.field private final result:Ljava/lang/String;

.field private final size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

.field private final start:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->Companion:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "auction_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "queue_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "placement_type"
        .end annotation
    .end param
    .param p5    # Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "size"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "start"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "end"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "duration"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "background_duration"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "result"
        .end annotation
    .end param
    .param p11    # Ljava/util/Set;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "metrics"
        .end annotation
    .end param
    .param p12    # Lcom/chartboost/heliumsdk/domain/MetricsError;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "error"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit16 p13, p1, 0x200

    const/16 v0, 0x200

    if-eq v0, p13, :cond_0

    .line 20
    sget-object p13, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;

    invoke-virtual {p13}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p13

    invoke-static {p1, v0, p13}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p13, p1, 0x1

    const/4 v0, 0x0

    if-nez p13, :cond_1

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->auctionId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->auctionId:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->queueId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->queueId:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->placementType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->placementType:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    goto :goto_3

    :cond_4
    iput-object p5, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->start:Ljava/lang/Long;

    goto :goto_4

    :cond_5
    iput-object p6, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->start:Ljava/lang/Long;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_6

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->end:Ljava/lang/Long;

    goto :goto_5

    :cond_6
    iput-object p7, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->end:Ljava/lang/Long;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_7

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->duration:Ljava/lang/Long;

    goto :goto_6

    :cond_7
    iput-object p8, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->duration:Ljava/lang/Long;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_8

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->backgroundDurationMs:Ljava/lang/Long;

    goto :goto_7

    :cond_8
    iput-object p9, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->backgroundDurationMs:Ljava/lang/Long;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_9

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->result:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iput-object p10, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->result:Ljava/lang/String;

    :goto_8
    iput-object p11, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->metrics:Ljava/util/Set;

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_a

    iput-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->error:Lcom/chartboost/heliumsdk/domain/MetricsError;

    goto :goto_9

    :cond_a
    iput-object p12, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->error:Lcom/chartboost/heliumsdk/domain/MetricsError;

    :goto_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/network/model/MetricsData;",
            ">;",
            "Lcom/chartboost/heliumsdk/domain/MetricsError;",
            ")V"
        }
    .end annotation

    const-string v0, "metrics"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->auctionId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->queueId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->placementType:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    .line 30
    iput-object p5, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->start:Ljava/lang/Long;

    .line 32
    iput-object p6, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->end:Ljava/lang/Long;

    .line 34
    iput-object p7, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->duration:Ljava/lang/Long;

    .line 36
    iput-object p8, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->backgroundDurationMs:Ljava/lang/Long;

    .line 38
    iput-object p9, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->result:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->metrics:Ljava/util/Set;

    .line 43
    iput-object p11, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->error:Lcom/chartboost/heliumsdk/domain/MetricsError;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v10, v2

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v11, v2

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    move-object v3, p0

    move-object/from16 v13, p10

    .line 21
    invoke-direct/range {v3 .. v14}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;)V

    return-void
.end method

.method public static synthetic getAuctionId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "auction_id"
    .end annotation

    return-void
.end method

.method public static synthetic getBackgroundDurationMs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "background_duration"
    .end annotation

    return-void
.end method

.method public static synthetic getDuration$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "duration"
    .end annotation

    return-void
.end method

.method public static synthetic getEnd$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "end"
    .end annotation

    return-void
.end method

.method public static synthetic getError$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "error"
    .end annotation

    return-void
.end method

.method public static synthetic getMetrics$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "metrics"
    .end annotation

    return-void
.end method

.method public static synthetic getPlacementType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "placement_type"
    .end annotation

    return-void
.end method

.method public static synthetic getQueueId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "queue_id"
    .end annotation

    return-void
.end method

.method public static synthetic getResult$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "result"
    .end annotation

    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "size"
    .end annotation

    return-void
.end method

.method public static synthetic getStart$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "start"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->auctionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->auctionId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->queueId:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->queueId:Ljava/lang/String;

    invoke-interface {p1, p2, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->placementType:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_5
    if-eqz v3, :cond_8

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->placementType:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v3, v2

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v0

    :goto_7
    if-eqz v3, :cond_b

    sget-object v3, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_8
    move v3, v2

    goto :goto_9

    :cond_c
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->start:Ljava/lang/Long;

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v0

    :goto_9
    if-eqz v3, :cond_e

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->start:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_f
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->end:Ljava/lang/Long;

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move v3, v0

    :goto_b
    if-eqz v3, :cond_11

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->end:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_c
    move v3, v2

    goto :goto_d

    :cond_12
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->duration:Ljava/lang/Long;

    if-eqz v3, :cond_13

    goto :goto_c

    :cond_13
    move v3, v0

    :goto_d
    if-eqz v3, :cond_14

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->duration:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_15

    :goto_e
    move v3, v2

    goto :goto_f

    :cond_15
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->backgroundDurationMs:Ljava/lang/Long;

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    move v3, v0

    :goto_f
    if-eqz v3, :cond_17

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->backgroundDurationMs:Ljava/lang/Long;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_10
    move v3, v2

    goto :goto_11

    :cond_18
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->result:Ljava/lang/String;

    if-eqz v3, :cond_19

    goto :goto_10

    :cond_19
    move v3, v0

    :goto_11
    if-eqz v3, :cond_1a

    new-instance v3, Lkotlinx/serialization/ContextualSerializer;

    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    new-array v6, v0, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4, v5, v6}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->result:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v3, Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->metrics:Ljava/util/Set;

    const/16 v4, 0x9

    invoke-interface {p1, p2, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_12

    :cond_1b
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->error:Lcom/chartboost/heliumsdk/domain/MetricsError;

    if-eqz v3, :cond_1c

    goto :goto_12

    :cond_1c
    move v2, v0

    :goto_12
    if-eqz v2, :cond_1d

    new-instance v2, Lkotlinx/serialization/ContextualSerializer;

    const-class v3, Lcom/chartboost/heliumsdk/domain/MetricsError;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v4, Lcom/chartboost/heliumsdk/domain/MetricsError;->Companion:Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4, v0}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->error:Lcom/chartboost/heliumsdk/domain/MetricsError;

    invoke-interface {p1, p2, v1, v2, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final getAuctionId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->auctionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackgroundDurationMs()Ljava/lang/Long;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->backgroundDurationMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getEnd()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->end:Ljava/lang/Long;

    return-object v0
.end method

.method public final getError()Lcom/chartboost/heliumsdk/domain/MetricsError;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->error:Lcom/chartboost/heliumsdk/domain/MetricsError;

    return-object v0
.end method

.method public final getMetrics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/network/model/MetricsData;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->metrics:Ljava/util/Set;

    return-object v0
.end method

.method public final getPlacementType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->placementType:Ljava/lang/String;

    return-object v0
.end method

.method public final getQueueId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->queueId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->size:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    return-object v0
.end method

.method public final getStart()Ljava/lang/Long;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->start:Ljava/lang/Long;

    return-object v0
.end method
