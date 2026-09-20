.class public Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;
.super Ljava/lang/Object;
.source "FileUploadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/FileUploadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSizeLimit"
.end annotation


# instance fields
.field public maxHeight:I

.field public maxWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;->maxWidth:I

    .line 137
    iput p2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;->maxHeight:I

    return-void
.end method
