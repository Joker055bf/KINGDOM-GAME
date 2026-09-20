.class public Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;
.super Ljava/lang/Object;
.source "RedemptionCodePageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/RedemptionCodePageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentConfig"
.end annotation


# instance fields
.field public backgroundImg:Ljava/lang/String;

.field public contentTitle:Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

.field public inputBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;

.field public instructions:Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

.field public redeemButton:Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
