.class public interface abstract Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;
.super Ljava/lang/Object;
.source "MediaItemsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/data/MediaItemsDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaItemProvider"
.end annotation


# virtual methods
.method public abstract providerMediaItems(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ")V"
        }
    .end annotation
.end method
