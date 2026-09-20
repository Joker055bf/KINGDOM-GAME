.class public final Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;
.super Ljava/lang/Object;
.source "DialogConfig.java"


# static fields
.field private static dialogColor:Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

.field private static dialogStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;-><init>()V

    sput-object v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogColor:Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;
    .locals 1

    .line 25
    sget-object v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogColor:Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;-><init>()V

    sput-object v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogColor:Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    .line 28
    :cond_0
    sget-object v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogColor:Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    return-object v0
.end method

.method public static getDialogStyle()I
    .locals 1

    .line 17
    sget v0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogStyle:I

    return v0
.end method

.method public static setDialogColor(Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogColor:Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    return-void
.end method

.method public static setDialogStyle(I)V
    .locals 0

    .line 12
    sput p0, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->dialogStyle:I

    return-void
.end method
