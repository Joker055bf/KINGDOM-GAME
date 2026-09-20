.class public Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;
.super Ljava/lang/Object;
.source "ListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field private static final BULLET_RADIUS:I = 0x3

.field private static final NUMBER_RADIUS:I = 0x5

.field public static final STANDARD_GAP_WIDTH:I


# instance fields
.field private final mNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget v0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->HORIZONTAL_EM_WIDTH:I

    sput v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->STANDARD_GAP_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->mNumber:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->mNumber:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 66
    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p5

    if-ne p5, p9, :cond_1

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p5

    .line 69
    sget-object p7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget p7, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->mNumber:I

    const/4 p8, -0x1

    if-eq p7, p8, :cond_0

    .line 72
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    iget p8, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->mNumber:I

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string p8, "."

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    add-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p4, p6

    invoke-virtual {p1, p7, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    add-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p4, p6

    const-string p6, "\u2022"

    .line 74
    invoke-virtual {p1, p6, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    :goto_0
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 56
    iget p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->mNumber:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 57
    sget p1, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->STANDARD_GAP_WIDTH:I

    add-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result p1

    return p1

    .line 59
    :cond_0
    sget p1, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;->STANDARD_GAP_WIDTH:I

    add-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result p1

    return p1
.end method
