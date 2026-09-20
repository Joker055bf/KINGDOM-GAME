.class public final Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;
.super Ljava/lang/Object;
.source "MetricsRequestBody.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
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
        "com/chartboost/heliumsdk/network/model/MetricsRequestBody.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
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
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;

    .line 20
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0xb

    const-string v3, "com.chartboost.heliumsdk.network.model.MetricsRequestBody"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "auction_id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "queue_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "placement_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "size"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "start"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "end"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "duration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "background_duration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "result"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "metrics"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "error"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 20
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/ContextualSerializer;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    new-array v5, v2, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v3, v4, v5}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v3, Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/ContextualSerializer;

    const-class v3, Lcom/chartboost/heliumsdk/domain/MetricsError;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v4, Lcom/chartboost/heliumsdk/domain/MetricsError;->Companion:Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v3, v4, v2}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;
    .locals 30

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v13, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v12, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v11, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v15, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v8, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v15, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v15, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v7, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v15, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v6, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v15, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v5, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v15, Lkotlinx/serialization/ContextualSerializer;

    const-class v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v16, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v16, Lkotlinx/serialization/KSerializer;

    invoke-static/range {v16 .. v16}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    new-array v9, v13, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v15, v3, v4, v9}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v3, 0x8

    invoke-interface {v0, v1, v3, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v9, Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;

    check-cast v9, Lkotlinx/serialization/KSerializer;

    invoke-direct {v4, v9}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v9, 0x9

    invoke-interface {v0, v1, v9, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v9, Lkotlinx/serialization/ContextualSerializer;

    const-class v15, Lcom/chartboost/heliumsdk/domain/MetricsError;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    sget-object v16, Lcom/chartboost/heliumsdk/domain/MetricsError;->Companion:Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    new-array v13, v13, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v9, v15, v14, v13}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-interface {v0, v1, v13, v9, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/16 v13, 0x7ff

    move v14, v13

    goto/16 :goto_8

    :cond_0
    move/from16 v24, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v15, v12

    :goto_0
    if-eqz v24, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v5}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance v5, Lkotlinx/serialization/ContextualSerializer;

    const-class v26, Lcom/chartboost/heliumsdk/domain/MetricsError;

    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    sget-object v26, Lcom/chartboost/heliumsdk/domain/MetricsError;->Companion:Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;

    invoke-virtual/range {v26 .. v26}, Lcom/chartboost/heliumsdk/domain/MetricsError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v26

    move-object/from16 v27, v14

    invoke-static/range {v26 .. v26}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    const/4 v3, 0x0

    new-array v4, v3, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v5, v13, v14, v4}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, v5, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit16 v2, v2, 0x400

    goto :goto_1

    :pswitch_1
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/16 v3, 0xa

    new-instance v4, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v5, Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/MetricsData$$serializer;

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v13, 0x9

    invoke-interface {v0, v1, v13, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit16 v2, v2, 0x200

    move-object/from16 v3, v26

    goto :goto_2

    :pswitch_2
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/16 v3, 0xa

    const/16 v13, 0x9

    new-instance v4, Lkotlinx/serialization/ContextualSerializer;

    const-class v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/KSerializer;

    invoke-static {v14}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    const/4 v3, 0x0

    new-array v13, v3, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v4, v5, v14, v13}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v3, 0x8

    invoke-interface {v0, v1, v3, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v2, v2, 0x100

    :goto_1
    move-object/from16 v3, v26

    move-object/from16 v14, v27

    :goto_2
    move-object/from16 v4, v28

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/16 v3, 0x8

    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v13, 0x7

    invoke-interface {v0, v1, v13, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit16 v2, v2, 0x80

    move v5, v13

    move-object/from16 v3, v26

    goto :goto_4

    :pswitch_4
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/16 v3, 0x8

    const/4 v13, 0x7

    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v14, 0x6

    invoke-interface {v0, v1, v14, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v2, v2, 0x40

    goto :goto_3

    :pswitch_5
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/16 v3, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v5, 0x5

    invoke-interface {v0, v1, v5, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit8 v2, v2, 0x20

    goto :goto_3

    :pswitch_6
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/16 v3, 0x8

    const/4 v5, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x6

    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v4, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v2, v2, 0x10

    goto :goto_3

    :pswitch_7
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/4 v3, 0x4

    const/4 v5, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x6

    sget-object v4, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions$$serializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v2, v2, 0x8

    :goto_3
    move v5, v13

    move-object/from16 v3, v26

    move-object/from16 v14, v27

    :goto_4
    move-object/from16 v4, v28

    goto :goto_6

    :pswitch_8
    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v14

    const/4 v3, 0x3

    const/4 v5, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x6

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v3, v28

    const/4 v13, 0x2

    invoke-interface {v0, v1, v13, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v3, v26

    move-object/from16 v14, v27

    :goto_5
    const/4 v5, 0x7

    :goto_6
    const/4 v13, 0x0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v26, v3

    move-object v3, v4

    move-object/from16 v27, v14

    const/4 v5, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x6

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v5, v26

    const/4 v13, 0x1

    invoke-interface {v0, v1, v13, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v14, v27

    const/4 v5, 0x7

    const/4 v13, 0x0

    move-object/from16 v29, v4

    move-object v4, v3

    move-object/from16 v3, v29

    goto/16 :goto_0

    :pswitch_a
    move-object v5, v3

    move-object v3, v4

    move-object/from16 v27, v14

    const/4 v13, 0x1

    const/4 v14, 0x6

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v14, v27

    const/4 v13, 0x0

    invoke-interface {v0, v1, v13, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v2, v2, 0x1

    move-object v4, v3

    move-object v3, v5

    goto :goto_7

    :pswitch_b
    move-object v5, v3

    move-object v3, v4

    move-object v3, v5

    move/from16 v24, v13

    :goto_7
    const/4 v5, 0x7

    goto/16 :goto_0

    :cond_1
    move-object v5, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v12

    move-object v12, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, v11

    move-object v11, v3

    move-object v3, v10

    move-object v10, v15

    move-object/from16 v29, v14

    move v14, v2

    move-object/from16 v2, v29

    :goto_8
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v8

    check-cast v18, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/Long;

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/Long;

    move-object/from16 v21, v6

    check-cast v21, Ljava/lang/Long;

    move-object/from16 v22, v5

    check-cast v22, Ljava/lang/Long;

    move-object/from16 v23, v3

    check-cast v23, Ljava/lang/String;

    move-object/from16 v24, v4

    check-cast v24, Ljava/util/Set;

    move-object/from16 v25, v9

    check-cast v25, Lcom/chartboost/heliumsdk/domain/MetricsError;

    const/16 v26, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v26}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 20
    invoke-virtual {p0, p1}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 20
    sget-object v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->write$Self(Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;)V

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

    .line 20
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
