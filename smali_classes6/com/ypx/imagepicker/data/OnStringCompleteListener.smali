.class public abstract Lcom/ypx/imagepicker/data/OnStringCompleteListener;
.super Lcom/ypx/imagepicker/data/OnPickerCompleteListener;
.source "OnStringCompleteListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ypx/imagepicker/data/OnPickerCompleteListener<",
        "Ljava/lang/String;",
        ">;"
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

    .line 32
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringCompleteListener;->onTransit(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringCompleteListener;->onPickComplete(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPickComplete(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringCompleteListener;->onPickComplete(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onPickComplete(Ljava/lang/String;)V
.end method

.method public onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTransit(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnStringCompleteListener;->onTransit(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onTransit(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
