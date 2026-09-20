.class public Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;
.super Ljava/lang/Object;
.source "VerticalMarginSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final absolute:Ljava/lang/Integer;

.field private final factor:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;->factor:Ljava/lang/Float;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;->absolute:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;->absolute:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;->factor:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 34
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 36
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;->factor:Ljava/lang/Float;

    if-eqz p2, :cond_0

    int-to-float p1, p1

    .line 37
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;->absolute:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 42
    :cond_1
    :goto_0
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method
