.class public Lcom/crosspromotion/sdk/promotion/PromotionAdRect;
.super Ljava/lang/Object;


# instance fields
.field private angle:F

.field private height:I

.field private scaleX:F

.field private scaleY:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdRect(Ljava/util/Map;)Lcom/crosspromotion/sdk/promotion/PromotionAdRect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/crosspromotion/sdk/promotion/PromotionAdRect;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;

    invoke-direct {v0}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;-><init>()V

    const-string/jumbo v1, "width"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->setWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "height"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->setHeight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v1, "scaleX"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->setScaleX(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string v1, "scaleY"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->setScaleY(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string v1, "angle"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->setAngle(F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->angle:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->height:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->scaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->width:I

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->angle:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->height:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->scaleY:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->width:I

    return-void
.end method
