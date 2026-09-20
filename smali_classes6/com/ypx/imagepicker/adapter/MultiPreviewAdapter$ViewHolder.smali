.class Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MultiPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    check-cast p1, Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;->imageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;)Lcom/ypx/imagepicker/widget/ShowTypeImageView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;->imageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    return-object p0
.end method
