.class public final Lcom/chartboost/heliumsdk/domain/Placement;
.super Ljava/lang/Object;
.source "Placement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/domain/Placement$$serializer;,
        Lcom/chartboost/heliumsdk/domain/Placement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000201BO\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eB3\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J;\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010%\u001a\u00020\n2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J\t\u0010(\u001a\u00020\u0006H\u00d6\u0001J!\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u00c7\u0001R\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0011\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0011\u001a\u0004\u0008\u001e\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/domain/Placement;",
        "",
        "seen1",
        "",
        "autoRefreshRate",
        "chartboostPlacement",
        "",
        "format",
        "Lcom/chartboost/heliumsdk/domain/AdFormat;",
        "adQueueingEnabled",
        "",
        "queueSize",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZI)V",
        "getAdQueueingEnabled$annotations",
        "()V",
        "getAdQueueingEnabled",
        "()Z",
        "getAutoRefreshRate$annotations",
        "getAutoRefreshRate",
        "()I",
        "getChartboostPlacement$annotations",
        "getChartboostPlacement",
        "()Ljava/lang/String;",
        "getFormat$annotations",
        "getFormat",
        "()Lcom/chartboost/heliumsdk/domain/AdFormat;",
        "getQueueSize$annotations",
        "getQueueSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field public static final Companion:Lcom/chartboost/heliumsdk/domain/Placement$Companion;


# instance fields
.field private final adQueueingEnabled:Z

.field private final autoRefreshRate:I

.field private final chartboostPlacement:Ljava/lang/String;

.field private final format:Lcom/chartboost/heliumsdk/domain/AdFormat;

.field private final queueSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/domain/Placement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/domain/Placement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/domain/Placement;->Companion:Lcom/chartboost/heliumsdk/domain/Placement$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "auto_refresh_rate"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "chartboost_placement"
        .end annotation
    .end param
    .param p4    # Lcom/chartboost/heliumsdk/domain/AdFormat;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "format"
        .end annotation

        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lcom/chartboost/heliumsdk/domain/AdFormatEnumSetSerializer;
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "ad_queueing_enabled"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "queue_size"
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

    and-int/lit8 p7, p1, 0x6

    const/4 v0, 0x6

    if-eq v0, p7, :cond_0

    .line 16
    sget-object p7, Lcom/chartboost/heliumsdk/domain/Placement$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/Placement$$serializer;

    invoke-virtual {p7}, Lcom/chartboost/heliumsdk/domain/Placement$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    if-nez p7, :cond_1

    const/4 p2, 0x0

    :cond_1
    iput p2, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    iput-object p3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    goto :goto_0

    :cond_2
    iput-boolean p5, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    :goto_0
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    goto :goto_1

    :cond_3
    iput p6, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    :goto_1
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZI)V
    .locals 1

    const-string v0, "chartboostPlacement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    .line 20
    iput-object p2, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    .line 25
    iput-boolean p4, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    .line 27
    iput p5, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_2

    const/4 p5, 0x2

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/chartboost/heliumsdk/domain/Placement;-><init>(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/chartboost/heliumsdk/domain/Placement;ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZIILjava/lang/Object;)Lcom/chartboost/heliumsdk/domain/Placement;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/chartboost/heliumsdk/domain/Placement;->copy(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZI)Lcom/chartboost/heliumsdk/domain/Placement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAdQueueingEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "ad_queueing_enabled"
    .end annotation

    return-void
.end method

.method public static synthetic getAutoRefreshRate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "auto_refresh_rate"
    .end annotation

    return-void
.end method

.method public static synthetic getChartboostPlacement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "chartboost_placement"
    .end annotation

    return-void
.end method

.method public static synthetic getFormat$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "format"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/chartboost/heliumsdk/domain/AdFormatEnumSetSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getQueueSize$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "queue_size"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/chartboost/heliumsdk/domain/Placement;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/chartboost/heliumsdk/domain/AdFormatEnumSetSerializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AdFormatEnumSetSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    const/4 v4, 0x2

    invoke-interface {p1, p2, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_3
    iget-boolean v3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    if-eq v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_3
    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_5
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_6
    iget v3, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    if-eq v3, v4, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    iget p0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    invoke-interface {p1, p2, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/chartboost/heliumsdk/domain/AdFormat;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZI)Lcom/chartboost/heliumsdk/domain/Placement;
    .locals 7

    const-string v0, "chartboostPlacement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/heliumsdk/domain/Placement;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/heliumsdk/domain/Placement;-><init>(ILjava/lang/String;Lcom/chartboost/heliumsdk/domain/AdFormat;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/chartboost/heliumsdk/domain/Placement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/chartboost/heliumsdk/domain/Placement;

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    iget-boolean v3, p1, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    iget p1, p1, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAdQueueingEnabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    return v0
.end method

.method public final getAutoRefreshRate()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    return v0
.end method

.method public final getChartboostPlacement()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    return-object v0
.end method

.method public final getQueueSize()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/AdFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Placement(autoRefreshRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->autoRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chartboostPlacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->chartboostPlacement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->format:Lcom/chartboost/heliumsdk/domain/AdFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adQueueingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->adQueueingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/Placement;->queueSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
