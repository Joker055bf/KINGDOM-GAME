.class public Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;
.super Ljava/lang/Object;
.source "RedemptionCodePageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/RedemptionCodePageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextConfigBean"
.end annotation


# instance fields
.field public color:Ljava/lang/String;

.field public fontSize:Ljava/lang/String;

.field public fontWeight:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertFontSize()F
    .locals 1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->fontSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public convertTextColor()I
    .locals 1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->color:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/bean/RedemptionCodePageBean;->access$000(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v0, -0x1000000

    return v0
.end method

.method public convertTypeface()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "bold"

    .line 115
    iget-object v1, p0, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->fontWeight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method
