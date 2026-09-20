.class public final Lru/ok/tracer/base/drop/DropManager$Companion;
.super Ljava/lang/Object;
.source "DropManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/base/drop/DropManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDropManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropManager.kt\nru/ok/tracer/base/drop/DropManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0010!\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0002J9\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0013J\u001e\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00162\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lru/ok/tracer/base/drop/DropManager$Companion;",
        "",
        "()V",
        "DEFAULT_MAX_RECORDS_SIZE",
        "",
        "EVENT_UNKNOWN",
        "",
        "REASON_MAX_SIZE_EXCEEDED",
        "compareRecord",
        "record",
        "Lru/ok/tracer/base/drop/DropRecord;",
        "withEvent",
        "withReason",
        "merge",
        "",
        "sortedRecords",
        "withRecords",
        "",
        "maxRecordsCount",
        "merge$tracer_base_release",
        "mergeInto",
        "",
        "",
        "tracer-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/ok/tracer/base/drop/DropManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$compareRecord(Lru/ok/tracer/base/drop/DropManager$Companion;Lru/ok/tracer/base/drop/DropRecord;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/base/drop/DropManager$Companion;->compareRecord(Lru/ok/tracer/base/drop/DropRecord;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final compareRecord(Lru/ok/tracer/base/drop/DropRecord;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 174
    invoke-virtual {p1}, Lru/ok/tracer/base/drop/DropRecord;->getEvent$tracer_base_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    .line 178
    :cond_0
    invoke-virtual {p1}, Lru/ok/tracer/base/drop/DropRecord;->getReason$tracer_base_release()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic merge$tracer_base_release$default(Lru/ok/tracer/base/drop/DropManager$Companion;Ljava/util/List;Ljava/util/Collection;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0xf

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/ok/tracer/base/drop/DropManager$Companion;->merge$tracer_base_release(Ljava/util/List;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final mergeInto(Ljava/util/List;Lru/ok/tracer/base/drop/DropRecord;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ")V"
        }
    .end annotation

    .line 165
    sget-object v0, Lru/ok/tracer/base/drop/DropManager$DropRecordComparator;->INSTANCE:Lru/ok/tracer/base/drop/DropManager$DropRecordComparator;

    move-object v3, v0

    check-cast v3, Ljava/util/Comparator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;IIILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/ok/tracer/base/drop/DropRecord;

    invoke-virtual {p2}, Lru/ok/tracer/base/drop/DropRecord;->getCount$tracer_base_release()I

    move-result p2

    invoke-virtual {v1, p2}, Lru/ok/tracer/base/drop/DropRecord;->copyIncrementCount$tracer_base_release(I)Lru/ok/tracer/base/drop/DropRecord;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 169
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final merge$tracer_base_release(Ljava/util/List;Ljava/util/Collection;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;",
            "Ljava/util/Collection<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;I)",
            "Ljava/util/List<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "sortedRecords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "withRecords"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    check-cast p2, Ljava/lang/Iterable;

    sget-object p1, Lru/ok/tracer/base/drop/DropManager$DropRecordComparator;->INSTANCE:Lru/ok/tracer/base/drop/DropManager$DropRecordComparator;

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 143
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 146
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    .line 147
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/ok/tracer/base/drop/DropRecord;

    .line 149
    sget-object v3, Lru/ok/tracer/base/drop/DropManager;->Companion:Lru/ok/tracer/base/drop/DropManager$Companion;

    invoke-direct {v3, v2, p2}, Lru/ok/tracer/base/drop/DropManager$Companion;->mergeInto(Ljava/util/List;Lru/ok/tracer/base/drop/DropRecord;)V

    goto :goto_1

    .line 151
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_5

    .line 152
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast p1, Lkotlin/random/Random;

    invoke-static {p1}, Lkotlin/random/PlatformRandomKt;->asJavaRandom(Lkotlin/random/Random;)Ljava/util/Random;

    move-result-object p1

    .line 154
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 v3, p3, -0x1

    if-le p2, v3, :cond_4

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 156
    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/ok/tracer/base/drop/DropRecord;

    .line 157
    invoke-virtual {p2}, Lru/ok/tracer/base/drop/DropRecord;->getCount$tracer_base_release()I

    move-result p2

    add-int/2addr v1, p2

    goto :goto_2

    .line 159
    :cond_4
    sget-object p1, Lru/ok/tracer/base/drop/DropManager;->Companion:Lru/ok/tracer/base/drop/DropManager$Companion;

    new-instance p2, Lru/ok/tracer/base/drop/DropRecord;

    const-string p3, "unknown"

    const-string v0, "max_size_exceeded"

    invoke-direct {p2, p3, v0, v1}, Lru/ok/tracer/base/drop/DropRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v2, p2}, Lru/ok/tracer/base/drop/DropManager$Companion;->mergeInto(Ljava/util/List;Lru/ok/tracer/base/drop/DropRecord;)V

    .line 146
    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 139
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "maxRecordsCount <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
