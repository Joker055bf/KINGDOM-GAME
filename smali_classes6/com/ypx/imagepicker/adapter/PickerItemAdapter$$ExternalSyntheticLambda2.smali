.class public final synthetic Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

.field public final synthetic f$1:Lcom/ypx/imagepicker/bean/ImageItem;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/ypx/imagepicker/adapter/PickerItemAdapter;Lcom/ypx/imagepicker/bean/ImageItem;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iput-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/ypx/imagepicker/bean/ImageItem;

    iput p3, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/ypx/imagepicker/bean/ImageItem;

    iget v2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->lambda$onBindViewHolder$2$com-ypx-imagepicker-adapter-PickerItemAdapter(Lcom/ypx/imagepicker/bean/ImageItem;IILandroid/view/View;)V

    return-void
.end method
