.class Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView$1;
.super Ljava/lang/Object;
.source "WXSingleCropControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->onBackPressed()V

    return-void
.end method
