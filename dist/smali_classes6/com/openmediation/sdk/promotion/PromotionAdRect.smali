.class public Lcom/openmediation/sdk/promotion/PromotionAdRect;
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

.method public static getExtraData(Lcom/openmediation/sdk/promotion/PromotionAdRect;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/promotion/PromotionAdRect;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getScaleY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getAngle()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "angle"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->angle:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->height:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->scaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->width:I

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->angle:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->height:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->scaleY:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/promotion/PromotionAdRect;->width:I

    return-void
.end method
