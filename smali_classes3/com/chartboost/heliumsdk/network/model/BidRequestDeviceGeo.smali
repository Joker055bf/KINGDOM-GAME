.class public final Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;
.super Ljava/lang/Object;
.source "BidRequestDevice.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$$serializer;,
        Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0002\u0012\u0013B#\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J!\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u00c7\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;",
        "",
        "seen1",
        "",
        "utcOffset",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(I)V",
        "getUtcOffset$annotations",
        "()V",
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
.field public static final Companion:Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$Companion;


# instance fields
.field private final utcOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;->Companion:Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;->utcOffset:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 113
    sget-object p1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/utils/Environment;->getUtcOffsetTime()I

    move-result p1

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "utcoffset"
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

    and-int/lit8 p3, p1, 0x0

    if-eqz p3, :cond_0

    .line 107
    sget-object p3, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$$serializer;

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    .line 113
    sget-object p1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/utils/Environment;->getUtcOffsetTime()I

    move-result p1

    .line 107
    iput p1, p0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;->utcOffset:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;->utcOffset:I

    :goto_0
    return-void
.end method

.method private static synthetic getUtcOffset$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "utcoffset"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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

    .line 107
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;->utcOffset:I

    .line 113
    sget-object v3, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/utils/Environment;->getUtcOffsetTime()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 107
    iget p0, p0, Lcom/chartboost/heliumsdk/network/model/BidRequestDeviceGeo;->utcOffset:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2
    return-void
.end method
