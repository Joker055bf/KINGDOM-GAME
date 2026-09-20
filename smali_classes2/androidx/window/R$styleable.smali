.class public final Landroidx/window/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActivityFilter:[I

.field public static final ActivityFilter_activityAction:I = 0x0

.field public static final ActivityFilter_activityName:I = 0x1

.field public static final ActivityRule:[I

.field public static final ActivityRule_alwaysExpand:I = 0x0

.field public static final ActivityRule_tag:I = 0x1

.field public static final DividerAttributes:[I

.field public static final DividerAttributes_dragRangeMaxRatio:I = 0x0

.field public static final DividerAttributes_dragRangeMinRatio:I = 0x1

.field public static final DividerAttributes_embeddingDividerColor:I = 0x2

.field public static final DividerAttributes_embeddingDividerType:I = 0x3

.field public static final DividerAttributes_embeddingDividerWidthDp:I = 0x4

.field public static final SplitPairFilter:[I

.field public static final SplitPairFilter_primaryActivityName:I = 0x0

.field public static final SplitPairFilter_secondaryActivityAction:I = 0x1

.field public static final SplitPairFilter_secondaryActivityName:I = 0x2

.field public static final SplitPairRule:[I

.field public static final SplitPairRule_animationBackgroundColor:I = 0x0

.field public static final SplitPairRule_clearTop:I = 0x1

.field public static final SplitPairRule_finishPrimaryWithSecondary:I = 0x2

.field public static final SplitPairRule_finishSecondaryWithPrimary:I = 0x3

.field public static final SplitPairRule_splitLayoutDirection:I = 0x4

.field public static final SplitPairRule_splitMaxAspectRatioInLandscape:I = 0x5

.field public static final SplitPairRule_splitMaxAspectRatioInPortrait:I = 0x6

.field public static final SplitPairRule_splitMinHeightDp:I = 0x7

.field public static final SplitPairRule_splitMinSmallestWidthDp:I = 0x8

.field public static final SplitPairRule_splitMinWidthDp:I = 0x9

.field public static final SplitPairRule_splitRatio:I = 0xa

.field public static final SplitPairRule_tag:I = 0xb

.field public static final SplitPlaceholderRule:[I

.field public static final SplitPlaceholderRule_animationBackgroundColor:I = 0x0

.field public static final SplitPlaceholderRule_finishPrimaryWithPlaceholder:I = 0x1

.field public static final SplitPlaceholderRule_placeholderActivityName:I = 0x2

.field public static final SplitPlaceholderRule_splitLayoutDirection:I = 0x3

.field public static final SplitPlaceholderRule_splitMaxAspectRatioInLandscape:I = 0x4

.field public static final SplitPlaceholderRule_splitMaxAspectRatioInPortrait:I = 0x5

.field public static final SplitPlaceholderRule_splitMinHeightDp:I = 0x6

.field public static final SplitPlaceholderRule_splitMinSmallestWidthDp:I = 0x7

.field public static final SplitPlaceholderRule_splitMinWidthDp:I = 0x8

.field public static final SplitPlaceholderRule_splitRatio:I = 0x9

.field public static final SplitPlaceholderRule_stickyPlaceholder:I = 0xa

.field public static final SplitPlaceholderRule_tag:I = 0xb


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/window/R$styleable;->ActivityFilter:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/window/R$styleable;->DividerAttributes:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroidx/window/R$styleable;->SplitPairRule:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    return-void

    :array_0
    .array-data 4
        0x7f040025
        0x7f040027
    .end array-data

    :array_1
    .array-data 4
        0x7f040060
        0x7f0404d8
    .end array-data

    :array_2
    .array-data 4
        0x7f0401a8
        0x7f0401a9
        0x7f0401c6
        0x7f0401c7
        0x7f0401c8
    .end array-data

    :array_3
    .array-data 4
        0x7f0403d3
        0x7f040408
        0x7f040409
    .end array-data

    :array_4
    .array-data 4
        0x7f040062
        0x7f0400f7
        0x7f0401ff
        0x7f040200
        0x7f04043e
        0x7f04043f
        0x7f040440
        0x7f040441
        0x7f040442
        0x7f040443
        0x7f040444
        0x7f0404d8
    .end array-data

    :array_5
    .array-data 4
        0x7f040062
        0x7f0401fe
        0x7f0403b6
        0x7f04043e
        0x7f04043f
        0x7f040440
        0x7f040441
        0x7f040442
        0x7f040443
        0x7f040444
        0x7f04049e
        0x7f0404d8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
