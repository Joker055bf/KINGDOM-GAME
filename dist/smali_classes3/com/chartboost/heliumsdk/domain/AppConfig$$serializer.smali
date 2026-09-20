.class public final Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;
.super Ljava/lang/Object;
.source "AppConfig.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/domain/AppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/chartboost/heliumsdk/domain/AppConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
    message = "This synthesized declaration should not be used directly"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = ""
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/chartboost/heliumsdk/domain/AppConfig.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/chartboost/heliumsdk/domain/AppConfig;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
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


# static fields
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;

    .line 23
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x17

    const-string v3, "com.chartboost.heliumsdk.domain.AppConfig"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "app_id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "adapter_classes"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "logging_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "banner_load_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "banner_size_event_delay_ms"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "metrics_events"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "fullscreen_load_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "start_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "init_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "init_metrics_post_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prebid_fetch_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "should_notify_loads"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "banner_impression_min_visible_dips"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "banner_impression_min_visible_duration_ms"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "visibility_tracker_poll_interval_ms"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "visibility_tracker_traversal_limit"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "credentials"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "placements"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "log_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "max_queue_size"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "queued_ad_ttl"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "default_queue_size"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x17

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 23
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/chartboost/heliumsdk/domain/Placement$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/Placement$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/chartboost/heliumsdk/domain/AppConfig;
    .locals 52

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v3, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v23, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v23

    check-cast v10, Lkotlinx/serialization/KSerializer;

    invoke-direct {v8, v10}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v7, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v6

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v25

    sget-object v4, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v10

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v12

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v11

    const/16 v13, 0xb

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v13

    const/16 v15, 0xc

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    const/16 v9, 0xd

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v9

    move-object/from16 v21, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    move/from16 v20, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v27

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    sget-object v18, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    move/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v18, v3

    move/from16 v17, v8

    const/16 v3, 0x11

    const/4 v8, 0x0

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v22, Lcom/chartboost/heliumsdk/domain/Placement$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/Placement$$serializer;

    move-object/from16 v8, v22

    check-cast v8, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v8}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v7

    const/4 v7, 0x0

    const/16 v8, 0x12

    invoke-interface {v0, v1, v8, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v7, 0x14

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v7

    const/16 v8, 0x15

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v23

    const/16 v8, 0x16

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    const v29, 0x7fffff

    move/from16 v40, v7

    move/from16 v43, v8

    move/from16 v32, v9

    move/from16 v31, v15

    move-object/from16 v7, v16

    move/from16 v36, v19

    move/from16 v33, v20

    move-wide/from16 v41, v23

    move-wide/from16 v34, v27

    move/from16 v16, v29

    move/from16 v19, v6

    move/from16 v28, v11

    move/from16 v27, v12

    move-wide/from16 v29, v13

    move/from16 v24, v17

    move/from16 v20, v18

    move-object/from16 v17, v21

    move-object/from16 v51, v4

    move-object v4, v2

    move-object/from16 v2, v22

    move-wide/from16 v21, v25

    move/from16 v26, v5

    move/from16 v25, v10

    move-object/from16 v5, v51

    goto/16 :goto_6

    :cond_0
    move v2, v7

    move-object v7, v9

    const-wide/16 v9, 0x0

    move/from16 v49, v2

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object/from16 v29, v6

    move v15, v8

    move/from16 v23, v15

    move/from16 v25, v23

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v32, v28

    move/from16 v36, v32

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v41, v38

    move-wide/from16 v39, v9

    move-wide/from16 v42, v39

    move-wide/from16 v44, v42

    move-wide/from16 v46, v44

    move/from16 v9, v41

    move v10, v9

    move v7, v10

    move-object/from16 v8, v29

    :goto_0
    if-eqz v49, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v14}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v14, 0x16

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v28

    const/high16 v14, 0x400000

    goto :goto_1

    :pswitch_1
    const/16 v14, 0x15

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v42

    const/high16 v14, 0x200000

    goto :goto_1

    :pswitch_2
    const/16 v14, 0x14

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v26

    const/high16 v14, 0x100000

    :goto_1
    or-int/2addr v15, v14

    goto/16 :goto_5

    :pswitch_3
    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v13, 0x13

    invoke-interface {v0, v1, v13, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/high16 v14, 0x80000

    goto :goto_2

    :pswitch_4
    const/16 v13, 0x13

    new-instance v14, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v50, Lcom/chartboost/heliumsdk/domain/Placement$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/Placement$$serializer;

    move-object/from16 v13, v50

    check-cast v13, Lkotlinx/serialization/KSerializer;

    invoke-direct {v14, v13}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v13, 0x12

    invoke-interface {v0, v1, v13, v14, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/high16 v14, 0x40000

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x12

    sget-object v14, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v13, 0x11

    invoke-interface {v0, v1, v13, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/high16 v14, 0x20000

    :goto_2
    or-int/2addr v15, v14

    goto/16 :goto_4

    :pswitch_6
    const/16 v13, 0x11

    const/16 v14, 0x10

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v9

    const/high16 v17, 0x10000

    or-int v15, v15, v17

    goto/16 :goto_4

    :pswitch_7
    const/16 v13, 0xf

    const/16 v14, 0x10

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v46

    const v18, 0x8000

    or-int v15, v15, v18

    goto/16 :goto_4

    :pswitch_8
    const/16 v7, 0xe

    const/16 v13, 0xf

    const/16 v14, 0x10

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v18

    or-int/lit16 v15, v15, 0x4000

    move/from16 v7, v18

    goto/16 :goto_4

    :pswitch_9
    const/16 v13, 0xd

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v32

    or-int/lit16 v15, v15, 0x2000

    goto/16 :goto_4

    :pswitch_a
    const/16 v13, 0xc

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v41

    or-int/lit16 v15, v15, 0x1000

    goto/16 :goto_4

    :pswitch_b
    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v39

    or-int/lit16 v15, v15, 0x800

    goto/16 :goto_4

    :pswitch_c
    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v37

    or-int/lit16 v15, v15, 0x400

    goto/16 :goto_4

    :pswitch_d
    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v38

    or-int/lit16 v15, v15, 0x200

    goto/16 :goto_4

    :pswitch_e
    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v23

    or-int/lit16 v15, v15, 0x100

    goto/16 :goto_4

    :pswitch_f
    move v5, v13

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v36

    or-int/lit16 v15, v15, 0x80

    move v13, v5

    const/16 v5, 0x8

    goto/16 :goto_5

    :pswitch_10
    const/4 v5, 0x6

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v27

    or-int/lit8 v15, v15, 0x40

    move v14, v5

    const/16 v5, 0x8

    const/4 v13, 0x7

    goto/16 :goto_0

    :pswitch_11
    const/4 v5, 0x6

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    sget-object v24, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

    move-object/from16 v5, v24

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v11, 0x5

    invoke-interface {v0, v1, v11, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v15, v15, 0x20

    goto :goto_3

    :pswitch_12
    const/4 v5, 0x4

    const/4 v11, 0x5

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v44

    or-int/lit8 v15, v15, 0x10

    goto :goto_3

    :pswitch_13
    const/4 v5, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v34

    or-int/lit8 v15, v15, 0x8

    move/from16 v10, v34

    goto :goto_3

    :pswitch_14
    const/4 v5, 0x2

    const/4 v11, 0x5

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    const/16 v33, 0x3

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v25

    or-int/lit8 v15, v15, 0x4

    goto :goto_3

    :pswitch_15
    const/4 v11, 0x5

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    const/16 v33, 0x3

    new-instance v5, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v48, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v11, v48

    check-cast v11, Lkotlinx/serialization/KSerializer;

    invoke-direct {v5, v11}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v11, 0x1

    invoke-interface {v0, v1, v11, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit8 v15, v15, 0x2

    goto :goto_3

    :pswitch_16
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/16 v13, 0xb

    const/16 v14, 0x10

    const/16 v18, 0xe

    const/16 v33, 0x3

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v29

    or-int/lit8 v15, v15, 0x1

    :goto_3
    const/16 v5, 0x8

    const/16 v11, 0xa

    goto :goto_4

    :pswitch_17
    const/4 v5, 0x0

    const/16 v14, 0x10

    const/16 v18, 0xe

    const/16 v33, 0x3

    move/from16 v49, v5

    const/16 v5, 0x8

    :goto_4
    const/4 v13, 0x7

    :goto_5
    const/4 v14, 0x6

    goto/16 :goto_0

    :cond_1
    move-object v5, v2

    move-object v2, v6

    move/from16 v33, v7

    move-object v7, v8

    move/from16 v20, v10

    move/from16 v16, v15

    move/from16 v19, v25

    move/from16 v24, v27

    move-object/from16 v17, v29

    move/from16 v25, v36

    move/from16 v27, v38

    move-wide/from16 v29, v39

    move/from16 v31, v41

    move-wide/from16 v41, v42

    move-wide/from16 v21, v44

    move-wide/from16 v34, v46

    move/from16 v36, v9

    move/from16 v40, v26

    move/from16 v43, v28

    move/from16 v28, v37

    move/from16 v26, v23

    :goto_6
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/chartboost/heliumsdk/domain/AppConfig;

    move-object v15, v0

    move-object/from16 v18, v7

    check-cast v18, Ljava/util/Set;

    move-object/from16 v23, v5

    check-cast v23, Ljava/util/EnumSet;

    move-object/from16 v37, v2

    check-cast v37, Lkotlinx/serialization/json/JsonObject;

    move-object/from16 v38, v3

    check-cast v38, Ljava/util/List;

    move-object/from16 v39, v4

    check-cast v39, Ljava/lang/String;

    const/16 v44, 0x0

    invoke-direct/range {v15 .. v44}, Lcom/chartboost/heliumsdk/domain/AppConfig;-><init>(ILjava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/chartboost/heliumsdk/domain/AppConfig;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 23
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/chartboost/heliumsdk/domain/AppConfig;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/chartboost/heliumsdk/domain/AppConfig;->write$Self(Lcom/chartboost/heliumsdk/domain/AppConfig;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/chartboost/heliumsdk/domain/AppConfig;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/chartboost/heliumsdk/domain/AppConfig;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
