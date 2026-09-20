.class Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionInfo"
.end annotation


# instance fields
.field public mEnd:I

.field public mSelectionContent:Ljava/lang/CharSequence;

.field public mStart:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V
    .locals 0

    .line 1068
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;-><init>()V

    return-void
.end method
