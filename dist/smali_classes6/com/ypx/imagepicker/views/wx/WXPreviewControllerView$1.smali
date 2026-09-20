.class Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;
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

    .line 133
    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 137
    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$000(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 140
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object p2

    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$300(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    .line 141
    invoke-static {v2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v3}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    invoke-static {p2, v0, v1, v2}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->getItemDisableCode(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Ljava/util/ArrayList;Z)I

    move-result p2

    if-eqz p2, :cond_2

    .line 144
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$400(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$300(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->getMessageFormCode(Landroid/content/Context;ILcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$400(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    :cond_1
    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$000(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$000(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    :goto_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$500(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {v0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$300(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V

    .line 158
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-static {p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->access$600(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void
.end method
