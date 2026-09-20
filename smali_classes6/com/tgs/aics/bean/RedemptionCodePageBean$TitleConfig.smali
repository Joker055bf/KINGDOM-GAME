.class public Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;
.super Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;
.source "RedemptionCodePageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/RedemptionCodePageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleConfig"
.end annotation


# instance fields
.field public backgroundImg:Ljava/lang/String;

.field public cancelImg:Ljava/lang/String;

.field public cancelPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;-><init>()V

    return-void
.end method
