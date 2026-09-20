.class Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$2;
.super Ljava/lang/Object;
.source "WXPreviewControllerView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$2;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$2;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$000(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    :cond_0
    sput-boolean p2, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    return-void
.end method
