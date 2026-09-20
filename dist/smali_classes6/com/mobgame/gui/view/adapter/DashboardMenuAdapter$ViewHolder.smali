.class public Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DashboardMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private btnImageCenter:Landroid/widget/ImageButton;

.field private hasNotiView:Landroid/view/View;

.field final synthetic this$0:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->this$0:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    .line 83
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    sget p1, Lcom/mobgame/R$id;->btn_image_center:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->btnImageCenter:Landroid/widget/ImageButton;

    .line 85
    sget p1, Lcom/mobgame/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 86
    sget p1, Lcom/mobgame/R$id;->ic_ntf:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->hasNotiView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->btnImageCenter:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->hasNotiView:Landroid/view/View;

    return-object p0
.end method
