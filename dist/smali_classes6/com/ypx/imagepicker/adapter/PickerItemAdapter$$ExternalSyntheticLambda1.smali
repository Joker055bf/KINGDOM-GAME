.class public final synthetic Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

.field public final synthetic f$1:Lcom/ypx/imagepicker/bean/ImageItem;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ypx/imagepicker/adapter/PickerItemAdapter;Lcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iput-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/ypx/imagepicker/bean/ImageItem;

    iput p3, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/ypx/imagepicker/bean/ImageItem;

    iget v2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->lambda$onBindViewHolder$1$com-ypx-imagepicker-adapter-PickerItemAdapter(Lcom/ypx/imagepicker/bean/ImageItem;ILandroid/view/View;)V

    return-void
.end method
