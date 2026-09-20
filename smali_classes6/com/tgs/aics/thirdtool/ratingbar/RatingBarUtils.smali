.class Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;
.super Ljava/lang/Object;
.source "RatingBarUtils.java"


# static fields
.field private static final MAX_CLICK_DISTANCE:I = 0x5

.field private static final MAX_CLICK_DURATION:I = 0xc8

.field private static mDecimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateRating(Lcom/tgs/aics/thirdtool/ratingbar/PartialView;FF)F
    .locals 3

    .line 27
    invoke-static {}, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->getDecimalFormat()Ljava/text/DecimalFormat;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    div-float/2addr p2, p1

    .line 29
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 30
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static getDecimalFormat()Ljava/text/DecimalFormat;
    .locals 3

    .line 49
    sget-object v0, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->mDecimalFormat:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v1, 0x2e

    .line 51
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 52
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 54
    :cond_0
    sget-object v0, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static getValidMinimumStars(FIF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    int-to-float p1, p1

    cmpl-float v1, p0, p1

    if-lez v1, :cond_1

    move p0, p1

    :cond_1
    rem-float p1, p0, p2

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_0
    return p2
.end method

.method static isClickEvent(FFLandroid/view/MotionEvent;)Z
    .locals 4

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpl-float p0, p0, p2

    if-gtz p0, :cond_1

    cmpl-float p0, p1, p2

    if-gtz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
