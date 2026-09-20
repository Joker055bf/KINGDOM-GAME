.class public Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;
.super Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;
.source "RedemptionCodePageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/RedemptionCodePageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBean"
.end annotation


# instance fields
.field public bgColor:Ljava/lang/String;

.field public bgRadius:Ljava/lang/String;

.field public placeHolderColor:Ljava/lang/String;

.field public placeHolderText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInputBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v0, -0x333334

    const/4 v1, 0x0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->bgColor:Ljava/lang/String;

    invoke-static {v2}, Lcom/tgs/aics/bean/RedemptionCodePageBean;->access$000(Ljava/lang/String;)I

    move-result v0

    .line 71
    iget-object v2, p0, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->bgRadius:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 74
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :goto_0
    invoke-static {v0, v1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public convertPhTextColor()I
    .locals 1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->placeHolderColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/bean/RedemptionCodePageBean;->access$000(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v0, -0x1000000

    return v0
.end method
