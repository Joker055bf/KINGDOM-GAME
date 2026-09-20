.class public Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
.super Ljava/lang/Object;
.source "DialogColor.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cancelEllipseColor:I

.field private cancelTextColor:I

.field private contentBackgroundColor:I

.field private okEllipseColor:I

.field private okTextColor:I

.field private titleTextColor:I

.field private topLineColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->contentBackgroundColor:I

    const v0, -0x222223

    .line 11
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->topLineColor:I

    const v0, -0x99999a

    .line 12
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->titleTextColor:I

    const v0, -0xcccccd

    .line 13
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelTextColor:I

    .line 14
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okTextColor:I

    const v0, -0xb0b0c

    .line 15
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelEllipseColor:I

    const v0, -0xff7e01

    .line 16
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okEllipseColor:I

    return-void
.end method


# virtual methods
.method public cancelEllipseColor()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelEllipseColor:I

    return v0
.end method

.method public cancelEllipseColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 69
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelEllipseColor:I

    return-object p0
.end method

.method public cancelTextColor()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelTextColor:I

    return v0
.end method

.method public cancelTextColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 49
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelTextColor:I

    return-object p0
.end method

.method public contentBackgroundColor()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->contentBackgroundColor:I

    return v0
.end method

.method public contentBackgroundColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 19
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->contentBackgroundColor:I

    return-object p0
.end method

.method public okEllipseColor()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okEllipseColor:I

    return v0
.end method

.method public okEllipseColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 79
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okEllipseColor:I

    return-object p0
.end method

.method public okTextColor()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okTextColor:I

    return v0
.end method

.method public okTextColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 59
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okTextColor:I

    return-object p0
.end method

.method public titleTextColor()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->titleTextColor:I

    return v0
.end method

.method public titleTextColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 39
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->titleTextColor:I

    return-object p0
.end method

.method public topLineColor()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->topLineColor:I

    return v0
.end method

.method public topLineColor(I)Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 0

    .line 29
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->topLineColor:I

    return-object p0
.end method
