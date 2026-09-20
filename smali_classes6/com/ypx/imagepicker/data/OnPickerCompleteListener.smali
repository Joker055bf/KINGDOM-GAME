.class public abstract Lcom/ypx/imagepicker/data/OnPickerCompleteListener;
.super Ljava/lang/Object;
.source "OnPickerCompleteListener.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 37
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnPickerCompleteListener;->onTransit(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/OnPickerCompleteListener;->onPickComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract onPickComplete(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V
    .locals 0

    return-void
.end method

.method public abstract onTransit(Ljava/util/ArrayList;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)TT;"
        }
    .end annotation
.end method
