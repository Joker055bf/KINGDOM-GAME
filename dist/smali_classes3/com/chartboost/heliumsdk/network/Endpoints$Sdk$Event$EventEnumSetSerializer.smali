.class public final Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;
.super Ljava/lang/Object;
.source "Endpoints.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventEnumSetSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/util/EnumSet<",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndpoints.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Endpoints.kt\ncom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1549#2:157\n1620#2,3:158\n1549#2:161\n1620#2,3:162\n*S KotlinDebug\n*F\n+ 1 Endpoints.kt\ncom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer\n*L\n135#1:157\n135#1:158,3\n141#1:161\n141#1:162,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Ljava/util/EnumSet;",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

    .line 129
    sget-object v0, Lkotlinx/serialization/json/JsonArray;->Companion:Lkotlinx/serialization/json/JsonArray$Companion;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArray$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lkotlinx/serialization/json/JsonArray;->Companion:Lkotlinx/serialization/json/JsonArray$Companion;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArray$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonArray;

    .line 141
    check-cast p1, Ljava/lang/Iterable;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 141
    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->valueOf(Ljava/lang/String;)Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 161
    check-cast v0, Ljava/lang/Iterable;

    const-class p1, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 142
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "jsonArray.map { Event.va\u2026oneOf(Event::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/EnumSet;

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 129
    sget-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p2, Ljava/util/EnumSet;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/util/EnumSet;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    check-cast p2, Ljava/lang/Iterable;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 158
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 159
    check-cast v1, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 135
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    .line 159
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 135
    new-instance p2, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p2, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    .line 136
    sget-object v0, Lkotlinx/serialization/json/JsonArray;->Companion:Lkotlinx/serialization/json/JsonArray$Companion;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArray$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method
