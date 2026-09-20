.class public Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DashboardMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DashboardMenuAdapter"


# instance fields
.field private activity:Landroid/content/Context;

.field private isLandscape:Z

.field private isTabletSize:Z

.field private listItemMenuDashboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobgame/model/ItemMenuDashboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mobgame/model/ItemMenuDashboard;",
            ">;",
            "Landroid/content/Context;",
            "ZZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->listItemMenuDashboard:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->activity:Landroid/content/Context;

    .line 30
    iput-boolean p3, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->isLandscape:Z

    .line 31
    iput-boolean p4, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->isTabletSize:Z

    if-nez p2, :cond_0

    .line 33
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->activity:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->onBindViewHolder(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;I)V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mobgame/model/ItemMenuDashboard;

    .line 51
    iget-boolean v0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->isLandscape:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->isTabletSize:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$000(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$000(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_1
    invoke-virtual {p2}, Lcom/mobgame/model/ItemMenuDashboard;->isClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$000(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->activity:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mobgame/R$color;->active_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->activity:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mobgame/model/ItemMenuDashboard;->getUrlIconActive()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$100(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    .line 60
    :cond_2
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$000(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->activity:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mobgame/R$color;->deactive_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->activity:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mobgame/model/ItemMenuDashboard;->getUrlIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$100(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    :goto_2
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$000(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mobgame/model/ItemMenuDashboard;->getTitle_menu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p2}, Lcom/mobgame/model/ItemMenuDashboard;->isHasNtf()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 65
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$200(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;->access$200(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;
    .locals 2

    .line 40
    iget-boolean p2, p0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->isTabletSize:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/mobgame/R$layout;->item_menu_dashboard_tablet:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/mobgame/R$layout;->item_menu_dashboard:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    :goto_0
    new-instance p2, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter$ViewHolder;-><init>(Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;Landroid/view/View;)V

    return-object p2
.end method
