.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "LazyGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,509:1\n393#1,3:514\n396#1,15:521\n412#1:537\n393#1,3:538\n396#1,15:545\n412#1:561\n1#2:510\n26#3:511\n26#3:512\n26#3:513\n33#4,4:517\n38#4:536\n33#4,4:541\n38#4:560\n33#4,6:562\n235#4,3:568\n33#4,4:571\n238#4,2:575\n38#4:577\n240#4:578\n33#4,6:579\n132#4,3:585\n33#4,4:588\n135#4,2:592\n38#4:594\n137#4:595\n51#4,6:596\n33#4,6:602\n33#4,6:608\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n*L\n263#1:514,3\n263#1:521,15\n263#1:537\n270#1:538,3\n270#1:545,15\n270#1:561\n126#1:511\n248#1:512\n249#1:513\n263#1:517,4\n263#1:536\n270#1:541,4\n270#1:560\n346#1:562,6\n368#1:568,3\n368#1:571,4\n368#1:575,2\n368#1:577\n368#1:578\n395#1:579,6\n439#1:585,3\n439#1:588,4\n439#1:592,2\n439#1:594\n439#1:595\n482#1:596,6\n489#1:602,6\n494#1:608,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001aA\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\nH\u0083\u0008\u001a\u008c\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002\u001a\u00b8\u0002\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00020-2\u0006\u0010.\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020423\u00105\u001a/\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(8\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+090\u00010\n2/\u0010:\u001a+\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0\n\u00a2\u0006\u0002\u0008>\u0012\u0004\u0012\u00020?0;H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010A\u001a+\u0010B\u001a\u00020=\"\u0004\u0008\u0000\u0010C*\u0008\u0012\u0004\u0012\u0002HC0\r2\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u0002HC0EH\u0002\u00a2\u0006\u0002\u0010F\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006G"
    }
    d2 = {
        "calculateExtraItems",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "pinnedItems",
        "",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
        "measuredLineProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
        "filter",
        "Lkotlin/Function1;",
        "",
        "calculateItemsOffsets",
        "",
        "lines",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
        "itemsBefore",
        "itemsAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "firstLineScrollOffset",
        "isVertical",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "measureLazyGrid",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "itemsCount",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenLines",
        "firstVisibleLineIndex",
        "firstVisibleLineScrollOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "itemAnimator",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "slotsPerLine",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "graphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "prefetchInfoRetriever",
        "Lkotlin/ParameterName;",
        "name",
        "line",
        "Lkotlin/Pair;",
        "layout",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyGrid-OZKpZRA",
        "(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "addAllFromArray",
        "T",
        "arr",
        "",
        "(Ljava/util/List;[Ljava/lang/Object;)V",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 505
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 506
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final calculateExtraItems(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 580
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 581
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 582
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 396
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    invoke-virtual {p2, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v8

    .line 398
    invoke-virtual {p2, v2, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v9

    const/4 v7, 0x0

    move-object v5, p1

    .line 399
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v4

    if-nez v1, :cond_0

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 408
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 412
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 434
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v9, p5

    if-ge v9, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    if-eqz v5, :cond_4

    if-nez p7, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    if-eqz v9, :cond_3

    goto :goto_3

    .line 436
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-zero firstLineScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    move v10, v8

    move v11, v10

    :goto_4
    if-ge v10, v9, :cond_5

    .line 590
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 592
    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 439
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v12

    array-length v12, v12

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_11

    .line 442
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move v7, v8

    :goto_5
    if-eqz v7, :cond_10

    .line 443
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 447
    new-array v7, v5, [I

    move v10, v8

    :goto_6
    if-ge v10, v5, :cond_7

    .line 448
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v11

    aput v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 450
    :cond_7
    new-array v10, v5, [I

    move v11, v8

    :goto_7
    if-ge v11, v5, :cond_8

    aput v8, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    if-eqz p8, :cond_a

    if-eqz v3, :cond_9

    move-object/from16 v8, p12

    .line 453
    invoke-interface {v3, v8, v6, v7, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_8

    .line 452
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null verticalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v8, p12

    if-eqz p10, :cond_f

    .line 458
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v3

    move-object/from16 p10, v10

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 463
    :goto_8
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    if-eqz v4, :cond_b

    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 465
    :cond_b
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v8

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_c

    if-le v7, v8, :cond_d

    :cond_c
    if-gez v3, :cond_15

    if-gt v8, v7, :cond_15

    .line 466
    :cond_d
    :goto_9
    aget v11, v10, v7

    .line 468
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v4, :cond_e

    sub-int v11, v6, v11

    .line 471
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 475
    :cond_e
    move-object v13, v9

    check-cast v13, Ljava/util/List;

    .line 476
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v11

    .line 475
    invoke-static {v13, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V

    if-eq v7, v8, :cond_15

    add-int/2addr v7, v3

    goto :goto_9

    .line 456
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null horizontalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no items"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_13

    move/from16 v4, p7

    :goto_a
    add-int/lit8 v5, v3, -0x1

    move-object v6, p1

    .line 598
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 599
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 483
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v7

    sub-int/2addr v4, v7

    .line 484
    invoke-virtual {v3, v4, v8, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 485
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v5, :cond_12

    goto :goto_b

    :cond_12
    move v3, v5

    goto :goto_a

    .line 603
    :cond_13
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p7

    move v5, v8

    :goto_c
    if-ge v5, v3, :cond_14

    .line 604
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 605
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 490
    move-object v7, v9

    check-cast v7, Ljava/util/List;

    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v10

    invoke-static {v7, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V

    .line 491
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 609
    :cond_14
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    move v3, v8

    :goto_d
    if-ge v3, v0, :cond_15

    move-object/from16 v5, p2

    .line 610
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 611
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 495
    invoke-virtual {v6, v4, v8, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 496
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 500
    :cond_15
    check-cast v9, Ljava/util/List;

    return-object v9
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method public static final measureLazyGrid-OZKpZRA(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    move/from16 v14, p0

    move-object/from16 v0, p1

    move/from16 v13, p3

    move/from16 v7, p4

    move-wide/from16 v11, p10

    move-object/from16 v8, p19

    move-object/from16 v10, p24

    const/16 v30, 0x1

    const/4 v15, 0x0

    if-ltz v7, :cond_0

    move/from16 v1, v30

    goto :goto_0

    :cond_0
    move v1, v15

    :goto_0
    if-eqz v1, :cond_32

    if-ltz p5, :cond_1

    move/from16 v1, v30

    goto :goto_1

    :cond_1
    move v1, v15

    :goto_1
    if-eqz v1, :cond_31

    if-gtz v14, :cond_4

    .line 78
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 79
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v2

    check-cast v18, Ljava/util/List;

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v19

    const/4 v15, 0x0

    .line 86
    move-object/from16 v20, p2

    check-cast v20, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v14, p17

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v21, p12

    move/from16 v23, p18

    move-object/from16 v27, p20

    move-object/from16 v28, p22

    .line 80
    invoke-virtual/range {v14 .. v28}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 96
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v2

    .line 97
    sget-object v4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    invoke-static {v11, v12, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    .line 99
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    invoke-static {v11, v12, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 106
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    invoke-interface {v10, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    neg-int v12, v7

    add-int v13, v13, p5

    if-eqz p12, :cond_3

    .line 112
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object/from16 v16, v0

    .line 101
    new-instance v19, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object/from16 v0, v19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p20

    move-object/from16 v8, p16

    move/from16 v9, p18

    move-object/from16 v10, p23

    move/from16 v15, p15

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v19

    .line 511
    :cond_4
    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v2, p8, v1

    if-nez p7, :cond_5

    if-gez v2, :cond_5

    add-int/2addr v1, v2

    move v2, v15

    .line 139
    :cond_5
    new-instance v9, Lkotlin/collections/ArrayDeque;

    invoke-direct {v9}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v5, v7

    if-gez p6, :cond_6

    move/from16 v3, p6

    goto :goto_3

    :cond_6
    move v3, v15

    :goto_3
    add-int/2addr v3, v5

    add-int/2addr v2, v3

    move v4, v2

    move/from16 v2, p7

    :goto_4
    if-gez v4, :cond_7

    if-lez v2, :cond_7

    add-int/lit8 v2, v2, -0x1

    .line 155
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v6

    .line 156
    invoke-virtual {v9, v15, v6}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 157
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_4

    :cond_7
    if-ge v4, v3, :cond_8

    add-int/2addr v1, v4

    move v4, v3

    :cond_8
    sub-int/2addr v4, v3

    add-int v6, v13, p5

    move/from16 p7, v2

    .line 172
    invoke-static {v6, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    neg-int v15, v4

    move/from16 v18, p7

    move/from16 p8, v4

    move/from16 v19, v5

    const/4 v4, 0x0

    const/16 v17, 0x0

    .line 182
    :goto_5
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    if-lt v15, v2, :cond_9

    .line 185
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    move/from16 v17, v30

    goto :goto_5

    :cond_9
    add-int/lit8 v18, v18, 0x1

    .line 189
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v15, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    move/from16 v5, p8

    move/from16 v31, v17

    move/from16 v4, v18

    :goto_6
    if-ge v4, v14, :cond_f

    if-lt v15, v2, :cond_b

    if-lez v15, :cond_b

    .line 200
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_b
    move/from16 p8, v2

    .line 202
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_c

    goto :goto_8

    .line 207
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v17

    add-int v15, v15, v17

    if-gt v15, v3, :cond_d

    .line 209
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v3

    move/from16 v17, v6

    add-int/lit8 v6, v14, -0x1

    if-eq v3, v6, :cond_e

    add-int/lit8 v3, v4, 0x1

    .line 213
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v2

    sub-int/2addr v5, v2

    move/from16 v31, v30

    goto :goto_7

    :cond_d
    move/from16 v18, v3

    move/from16 v17, v6

    .line 216
    :cond_e
    invoke-virtual {v9, v2}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v3, p7

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p8

    move/from16 p7, v3

    move/from16 v6, v17

    move/from16 v3, v18

    goto :goto_6

    :cond_f
    :goto_8
    move/from16 v17, v6

    if-ge v15, v13, :cond_11

    sub-int v2, v13, v15

    sub-int/2addr v5, v2

    add-int/2addr v15, v2

    move/from16 v4, p7

    :goto_9
    if-ge v5, v7, :cond_10

    if-lez v4, :cond_10

    add-int/lit8 v4, v4, -0x1

    .line 231
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v3

    const/4 v6, 0x0

    .line 232
    invoke-virtual {v9, v6, v3}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 233
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_9

    :cond_10
    add-int/2addr v1, v2

    if-gez v5, :cond_11

    add-int/2addr v1, v5

    add-int/2addr v15, v5

    move v5, v15

    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    move/from16 v39, v15

    move v15, v5

    move/from16 v5, v39

    .line 512
    :goto_a
    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 248
    invoke-static {v2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    invoke-static {v1}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 513
    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 249
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v2, v3, :cond_12

    int-to-float v1, v1

    move v6, v1

    goto :goto_b

    :cond_12
    move/from16 v6, p9

    :goto_b
    if-ltz v15, :cond_13

    move/from16 v1, v30

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_30

    neg-int v4, v15

    .line 259
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 261
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v1

    move v3, v1

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    .line 262
    :goto_d
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v1

    move v2, v1

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    .line 518
    :goto_e
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    const/16 v20, 0x0

    move-object/from16 v21, v20

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v1, :cond_19

    .line 519
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 520
    check-cast v22, Ljava/lang/Number;

    move/from16 p7, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_16

    if-ge v2, v3, :cond_16

    move/from16 v22, v30

    goto :goto_10

    :cond_16
    const/16 v22, 0x0

    :goto_10
    if-eqz v22, :cond_18

    move/from16 v22, v3

    .line 522
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v3

    move/from16 p8, v1

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, v1, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v23

    const/16 v25, 0x0

    move/from16 v26, p8

    move-object/from16 v1, p2

    move/from16 v13, p7

    move/from16 v32, v22

    move/from16 v22, v3

    move/from16 v3, v25

    move/from16 v25, v4

    move/from16 v4, v22

    move/from16 p7, v15

    move/from16 v34, v17

    move/from16 v33, v19

    move v15, v5

    move/from16 v17, v6

    move-wide/from16 v5, v23

    .line 524
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v21, :cond_17

    .line 531
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    goto :goto_11

    :cond_17
    move-object/from16 v2, v21

    .line 533
    :goto_11
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v2

    goto :goto_12

    :cond_18
    move/from16 v13, p7

    move/from16 v26, v1

    move/from16 v32, v3

    move/from16 v25, v4

    move/from16 p7, v15

    move/from16 v34, v17

    move/from16 v33, v19

    move v15, v5

    move/from16 v17, v6

    :goto_12
    add-int/lit8 v10, v10, 0x1

    move v2, v13

    move v5, v15

    move/from16 v6, v17

    move/from16 v4, v25

    move/from16 v1, v26

    move/from16 v3, v32

    move/from16 v19, v33

    move/from16 v17, v34

    move/from16 v13, p3

    move/from16 v15, p7

    goto :goto_f

    :cond_19
    move v13, v2

    move/from16 v32, v3

    move/from16 v25, v4

    move/from16 p7, v15

    move/from16 v34, v17

    move/from16 v33, v19

    move v15, v5

    move/from16 v17, v6

    if-nez v21, :cond_1a

    .line 537
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    :cond_1a
    move-object/from16 v35, v21

    .line 542
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v10

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v10, :cond_1e

    .line 543
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 544
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v1, v13, 0x1

    if-gt v1, v2, :cond_1b

    if-ge v2, v14, :cond_1b

    move/from16 v6, v30

    goto :goto_14

    :cond_1b
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_1d

    .line 546
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v4

    const/4 v6, 0x0

    .line 547
    invoke-virtual {v0, v6, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v21

    const/4 v3, 0x0

    move-object/from16 v1, p2

    move/from16 v16, v5

    move/from16 v19, v6

    move-wide/from16 v5, v21

    .line 548
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v20, :cond_1c

    .line 555
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v2

    check-cast v20, Ljava/util/List;

    :cond_1c
    move-object/from16 v2, v20

    .line 557
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v2

    goto :goto_15

    :cond_1d
    move/from16 v16, v5

    const/16 v19, 0x0

    :goto_15
    add-int/lit8 v5, v16, 0x1

    goto :goto_13

    :cond_1e
    const/16 v19, 0x0

    if-nez v20, :cond_1f

    .line 561
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    :cond_1f
    move-object/from16 v36, v20

    if-gtz v7, :cond_21

    if-gez p6, :cond_20

    goto :goto_17

    :cond_20
    move/from16 v38, p7

    :goto_16
    move-object/from16 v37, v18

    goto :goto_19

    .line 280
    :cond_21
    :goto_17
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    move/from16 v1, p7

    move/from16 v6, v19

    :goto_18
    if-ge v6, v0, :cond_22

    .line 281
    invoke-virtual {v9, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v2

    if-eqz v1, :cond_22

    if-gt v2, v1, :cond_22

    .line 283
    move-object v3, v9

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-eq v6, v3, :cond_22

    sub-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    .line 286
    invoke-virtual {v9, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    goto :goto_18

    :cond_22
    move/from16 v38, v1

    goto :goto_16

    :goto_19
    if-eqz p12, :cond_23

    .line 294
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    goto :goto_1a

    .line 296
    :cond_23
    invoke-static {v11, v12, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    :goto_1a
    move v10, v0

    if-eqz p12, :cond_24

    .line 299
    invoke-static {v11, v12, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v0

    goto :goto_1b

    .line 301
    :cond_24
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    :goto_1b
    move v8, v0

    .line 305
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move v3, v10

    move v4, v8

    move v5, v15

    move/from16 v6, p3

    move/from16 v7, v25

    move v9, v8

    move/from16 v8, p12

    move/from16 p1, v9

    move-object/from16 v9, p13

    move/from16 p4, v10

    move-object/from16 v10, p14

    move/from16 p7, v13

    move-wide v13, v11

    move/from16 v11, p15

    move-object/from16 v12, p16

    .line 304
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v0

    move/from16 v1, v17

    float-to-int v2, v1

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v20

    .line 326
    move-object/from16 v21, p2

    check-cast v21, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    const/16 v23, 0x0

    const/16 v25, 0x0

    move v4, v1

    move v3, v15

    move/from16 v1, v19

    move-object/from16 v15, p17

    move/from16 v16, v2

    move/from16 v17, p4

    move/from16 v18, p1

    move-object/from16 v19, v0

    move/from16 v22, p12

    move/from16 v24, p18

    move/from16 v26, v38

    move/from16 v27, v3

    move-object/from16 v28, p20

    move-object/from16 v29, p22

    .line 320
    invoke-virtual/range {v15 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 337
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v5

    .line 338
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz p12, :cond_25

    move/from16 v10, p1

    goto :goto_1c

    :cond_25
    move/from16 v10, p4

    .line 341
    :goto_1c
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    move/from16 v7, p4

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v13, v14, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    .line 343
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v5

    move/from16 v6, p1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v13, v14, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v8

    if-eqz p12, :cond_26

    move v5, v8

    goto :goto_1d

    :cond_26
    move v5, v2

    :goto_1d
    if-eq v5, v10, :cond_27

    .line 563
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v15, v1

    :goto_1e
    if-ge v15, v6, :cond_27

    .line 564
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 565
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 347
    invoke-virtual {v7, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->updateMainAxisLayoutSize(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1e

    :cond_27
    move v10, v2

    goto :goto_1f

    :cond_28
    move/from16 v6, p1

    move/from16 v7, p4

    move v8, v6

    move v10, v7

    :goto_1f
    add-int/lit8 v2, p0, -0x1

    move/from16 v5, p7

    if-ne v5, v2, :cond_2a

    move/from16 v2, p3

    if-le v3, v2, :cond_29

    goto :goto_20

    :cond_29
    move v3, v1

    goto :goto_21

    :cond_2a
    :goto_20
    move/from16 v3, v30

    .line 358
    :goto_21
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;

    move-object/from16 v8, p21

    invoke-direct {v7, v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v8, p24

    invoke-interface {v8, v2, v6, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    .line 365
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object v11, v0

    goto :goto_24

    .line 569
    :cond_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v15, v1

    :goto_22
    if-ge v15, v7, :cond_2e

    .line 573
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 575
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 369
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v9

    move/from16 v10, v32

    if-gt v10, v9, :cond_2c

    if-gt v9, v5, :cond_2c

    move/from16 v9, v30

    goto :goto_23

    :cond_2c
    move v9, v1

    :goto_23
    if-eqz v9, :cond_2d

    .line 575
    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v15, v15, 0x1

    move/from16 v32, v10

    goto :goto_22

    .line 578
    :cond_2e
    check-cast v2, Ljava/util/List;

    move-object v11, v2

    :goto_24
    if-eqz p12, :cond_2f

    .line 374
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_25

    :cond_2f
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_25
    move-object/from16 v16, v0

    .line 352
    new-instance v19, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move/from16 v2, v38

    move-object v5, v6

    move/from16 v6, v31

    move-object/from16 v7, p20

    move-object/from16 v8, p16

    move/from16 v9, p18

    move-object/from16 v10, p23

    move/from16 v12, v33

    move/from16 v13, v34

    move/from16 v14, p0

    move/from16 v15, p15

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v19

    .line 257
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative initial offset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
