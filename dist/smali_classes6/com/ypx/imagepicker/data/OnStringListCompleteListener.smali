.class public abstract Lcom/ypx/imagepicker/data/OnStringListCompleteListener;
.super Lcom/ypx/imagepicker/data/OnPickerCompleteListener;
.source "OnStringListCompleteListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ypx/imagepicker/data/OnPickerCompleteListener<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/ypx/imagepicker/data/OnPickerCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePickComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringListCompleteListener;->onTransit(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringListCompleteListener;->onPickComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onPickComplete(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringListCompleteListener;->onPickComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public abstract onPickComplete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTransit(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringListCompleteListener;->onTransit(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public onTransit(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 31
    iget-object v1, v1, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
