.class Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$2;
.super Ljava/lang/Object;
.source "MultiImagePickerFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$2;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public folderSelected(Lcom/ypx/imagepicker/bean/ImageSet;I)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$2;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$400(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;IZ)V

    return-void
.end method
