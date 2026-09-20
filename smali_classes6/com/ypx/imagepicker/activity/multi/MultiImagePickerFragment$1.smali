.class Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MultiImagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;
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

    .line 190
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 193
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/16 p1, 0x8

    if-nez p2, :cond_0

    .line 195
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 196
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$100(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/ypx/imagepicker/R$anim;->picker_fade_out:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 201
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$100(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/ypx/imagepicker/R$anim;->picker_fade_in:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 209
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 210
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$200(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    :try_start_0
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$200(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p3}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$300(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/ImageItem;->getTimeFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
