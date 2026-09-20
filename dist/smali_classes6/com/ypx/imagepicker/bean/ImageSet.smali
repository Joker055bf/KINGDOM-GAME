.class public Lcom/ypx/imagepicker/bean/ImageSet;
.super Ljava/lang/Object;
.source "ImageSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ID_ALL_MEDIA:Ljava/lang/String; = "-1"

.field public static final ID_ALL_VIDEO:Ljava/lang/String; = "-2"


# instance fields
.field public count:I

.field public cover:Lcom/ypx/imagepicker/bean/ImageItem;

.field public coverPath:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public isSelected:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    return-void
.end method

.method public static allImageSet(Ljava/lang/String;)Lcom/ypx/imagepicker/bean/ImageSet;
    .locals 2

    .line 69
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageSet;-><init>()V

    const-string v1, "-1"

    .line 70
    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    .line 71
    iput-object p0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/ypx/imagepicker/bean/ImageSet;
    .locals 3

    .line 37
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageSet;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 41
    iget-boolean v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    iput-boolean v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 43
    iget-object v2, p0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public copy(Z)Lcom/ypx/imagepicker/bean/ImageSet;
    .locals 4

    .line 50
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageSet;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 54
    iget-boolean v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    iput-boolean v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 56
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/ImageItem;->copy()Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object v2

    .line 62
    iget-object v3, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    move-object v0, p1

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageSet;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAllMedia()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAllVideo()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
