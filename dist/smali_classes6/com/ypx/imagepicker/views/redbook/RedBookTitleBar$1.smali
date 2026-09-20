.class Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar$1;
.super Ljava/lang/Object;
.source "RedBookTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar$1;->this$0:Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar$1;->this$0:Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->onBackPressed()V

    return-void
.end method
