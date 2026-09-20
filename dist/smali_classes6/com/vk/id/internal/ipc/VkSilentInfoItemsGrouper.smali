.class public final Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;
.super Ljava/lang/Object;
.source "VkSilentInfoItemsGrouper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper$SilentAuthInfoPriorityComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVkSilentInfoItemsGrouper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VkSilentInfoItemsGrouper.kt\ncom/vk/id/internal/ipc/VkSilentInfoItemsGrouper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1663#2,8:86\n1485#2:94\n1510#2,3:95\n1513#2,3:105\n1863#2:109\n1971#2,14:110\n1557#2:124\n1628#2,3:125\n774#2:128\n865#2,2:129\n1971#2,14:131\n1864#2:145\n381#3,7:98\n1#4:108\n*S KotlinDebug\n*F\n+ 1 VkSilentInfoItemsGrouper.kt\ncom/vk/id/internal/ipc/VkSilentInfoItemsGrouper\n*L\n40#1:86,8\n44#1:94\n44#1:95,3\n44#1:105,3\n49#1:109\n50#1:110,14\n51#1:124\n51#1:125,3\n52#1:128\n52#1:129,2\n52#1:131,14\n49#1:145\n44#1:98,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0008B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;",
        "",
        "<init>",
        "()V",
        "groupByWeightAndUserHash",
        "",
        "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
        "groupByUserHash",
        "SilentAuthInfoPriorityComparator",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;

    invoke-direct {v0}, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;-><init>()V

    sput-object v0, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;->INSTANCE:Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final groupByUserHash(Ljava/util/List;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
            ">;"
        }
    .end annotation

    .line 44
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 94
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    move-object v3, v2

    check-cast v3, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 44
    invoke-virtual {v3}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/silentauth/SilentAuthInfo;->getUserHash()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 101
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 105
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const-string v2, ""

    .line 46
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 47
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 109
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 50
    check-cast v2, Ljava/lang/Iterable;

    .line 110
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_2

    .line 112
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 114
    :cond_5
    move-object v6, v4

    check-cast v6, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 50
    invoke-virtual {v6}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getProviderWeight()I

    move-result v6

    .line 116
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 117
    move-object v8, v7

    check-cast v8, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 50
    invoke-virtual {v8}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getProviderWeight()I

    move-result v8

    if-ge v6, v8, :cond_7

    move-object v4, v7

    move v6, v8

    .line 122
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 50
    :goto_2
    check-cast v4, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getProviderWeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v5

    .line 124
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 125
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 126
    check-cast v7, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 51
    sget-object v8, Lcom/vk/silentauth/SilentTokenProviderInfo;->Companion:Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;

    invoke-virtual {v7}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;->fromSilentAuthInfo(Lcom/vk/silentauth/SilentAuthInfo;)Lcom/vk/silentauth/SilentTokenProviderInfo;

    move-result-object v7

    .line 126
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 127
    :cond_9
    move-object/from16 v25, v4

    check-cast v25, Ljava/util/List;

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 129
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 52
    invoke-virtual {v8}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getProviderWeight()I

    move-result v8

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_c

    const/4 v7, 0x1

    :cond_c
    :goto_6
    if-eqz v7, :cond_a

    .line 129
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 130
    :cond_d
    check-cast v4, Ljava/util/List;

    .line 128
    check-cast v4, Ljava/lang/Iterable;

    .line 131
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 132
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, v5

    goto :goto_7

    .line 133
    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 134
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_7

    .line 135
    :cond_f
    move-object v3, v2

    check-cast v3, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 52
    invoke-virtual {v3}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/silentauth/SilentAuthInfo;->getWeight()I

    move-result v3

    .line 137
    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 138
    move-object v6, v4

    check-cast v6, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 52
    invoke-virtual {v6}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vk/silentauth/SilentAuthInfo;->getWeight()I

    move-result v6

    if-ge v3, v6, :cond_11

    move-object v2, v4

    move v3, v6

    .line 143
    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 52
    :goto_7
    check-cast v2, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {v2}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const v27, 0x17fff

    const/16 v28, 0x0

    invoke-static/range {v8 .. v28}, Lcom/vk/silentauth/SilentAuthInfo;->copy$default(Lcom/vk/silentauth/SilentAuthInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v7, v4, v5}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->copy$default(Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;Lcom/vk/silentauth/SilentAuthInfo;IILjava/lang/Object;)Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    return-object v1
.end method


# virtual methods
.method public final groupByWeightAndUserHash(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;->groupByUserHash(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 38
    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper$SilentAuthInfoPriorityComparator;

    invoke-direct {v0}, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper$SilentAuthInfoPriorityComparator;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 39
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 89
    move-object v3, v2

    check-cast v3, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 40
    invoke-virtual {v3}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/silentauth/SilentAuthInfo;->getDistinctId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 90
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
