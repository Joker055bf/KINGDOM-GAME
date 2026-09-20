.class public abstract Lcom/ypx/imagepicker/views/base/PickerItemView;
.super Lcom/ypx/imagepicker/views/base/PBaseLayout;
.source "PickerItemView.java"


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract disableItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V
.end method

.method public abstract enableItem(Lcom/ypx/imagepicker/bean/ImageItem;ZI)V
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ypx/imagepicker/views/base/PickerItemView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public abstract getCameraView(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;
.end method

.method public abstract getCheckBoxView()Landroid/view/View;
.end method

.method public getPosition()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/ypx/imagepicker/views/base/PickerItemView;->position:I

    return v0
.end method

.method public abstract initItem(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ypx/imagepicker/views/base/PickerItemView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ypx/imagepicker/views/base/PickerItemView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/ypx/imagepicker/views/base/PickerItemView;->position:I

    return-void
.end method
