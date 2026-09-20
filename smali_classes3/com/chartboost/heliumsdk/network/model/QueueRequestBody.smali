.class public final Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;
.super Ljava/lang/Object;
.source "QueueRequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$$serializer;,
        Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 -2\u00020\u0001:\u0002,-B]\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB;\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0017\u001a\u00020\u0005H\u00c2\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c2\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u001aJ\t\u0010\u001b\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c2\u0003JL\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001J!\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u00c7\u0001R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u0012\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0012\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00058\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0014\u0010\u0010R\u0016\u0010\u0008\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0010R\u0016\u0010\n\u001a\u00020\u00058\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0010\u00a8\u0006."
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;",
        "",
        "seen1",
        "",
        "appId",
        "",
        "placementName",
        "actualMaxQueueSize",
        "queueCapacity",
        "currentQueueDepth",
        "queueId",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)V",
        "getActualMaxQueueSize$annotations",
        "()V",
        "Ljava/lang/Integer;",
        "getAppId$annotations",
        "getCurrentQueueDepth$annotations",
        "getPlacementName$annotations",
        "getQueueCapacity$annotations",
        "getQueueId$annotations",
        "component1",
        "component2",
        "component3",
        "()Ljava/lang/Integer;",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field public static final Companion:Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$Companion;


# instance fields
.field private final actualMaxQueueSize:Ljava/lang/Integer;

.field private final appId:Ljava/lang/String;

.field private final currentQueueDepth:I

.field private final placementName:Ljava/lang/String;

.field private final queueCapacity:I

.field private final queueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->Companion:Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "app_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "placement_name"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "actual_max_queue_size"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "queue_capacity"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "current_queue_depth"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "queue_id"
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

    and-int/lit8 p8, p1, 0x3a

    const/16 v0, 0x3a

    if-eq v0, p8, :cond_0

    .line 17
    sget-object p8, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$$serializer;

    invoke-virtual {p8}, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-nez p8, :cond_1

    .line 20
    sget-object p2, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getAppId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    .line 17
    :cond_1
    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iput-object p4, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    :goto_0
    iput p5, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    iput p6, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    iput-object p7, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queueId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    .line 25
    iput p4, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    .line 27
    iput p5, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    .line 29
    iput-object p6, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 20
    sget-object p1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getAppId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v3, p3

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)V

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    return-object v0
.end method

.method private final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method private final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    return-object v0
.end method

.method private final component4()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    return v0
.end method

.method private final component5()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    return v0
.end method

.method private final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;ILjava/lang/Object;)Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getActualMaxQueueSize$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "actual_max_queue_size"
    .end annotation

    return-void
.end method

.method private static synthetic getAppId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_id"
    .end annotation

    return-void
.end method

.method private static synthetic getCurrentQueueDepth$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "current_queue_depth"
    .end annotation

    return-void
.end method

.method private static synthetic getPlacementName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "placement_name"
    .end annotation

    return-void
.end method

.method private static synthetic getQueueCapacity$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "queue_capacity"
    .end annotation

    return-void
.end method

.method private static synthetic getQueueId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "queue_id"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    .line 20
    sget-object v3, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x3

    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x5

    iget-object p0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queueId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    iget v3, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    iget v3, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    iget-object p1, p1, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueueRequestBody(appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placementName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actualMaxQueueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->actualMaxQueueSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentQueueDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->currentQueueDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;->queueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
