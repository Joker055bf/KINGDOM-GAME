.class Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
.super Ljava/lang/Object;
.source "CutoutPaddingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/anim/CutoutPaddingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CutoutInfo"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p1, p0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->left:I

    .line 300
    iput p2, p0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->top:I

    .line 301
    iput p3, p0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->right:I

    .line 302
    iput p4, p0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->bottom:I

    return-void
.end method
