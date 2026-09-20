.class Lcom/tgs/aics/ui/activity/IMActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "IMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/IMActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field final synthetic val$toNewestMessageLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$2;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$2;->val$toNewestMessageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, 0x1

    .line 251
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, p2

    .line 252
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$2;->val$toNewestMessageLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
