.class Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;
.super Ljava/lang/Object;
.source "PickerFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->onBindViewHolder(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iput p2, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->access$100(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;)Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->access$100(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;)Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;

    move-result-object p1

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget v1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->access$200(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;I)Lcom/ypx/imagepicker/bean/ImageSet;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;->folderSelected(Lcom/ypx/imagepicker/bean/ImageSet;I)V

    :cond_0
    return-void
.end method
