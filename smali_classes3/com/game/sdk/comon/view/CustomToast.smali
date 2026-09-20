.class public Lcom/game/sdk/comon/view/CustomToast;
.super Landroid/widget/Toast;
.source "CustomToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/view/CustomToast$TOAST_TYPE;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p3, p2}, Lcom/game/sdk/comon/view/CustomToast;->initView(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, p3, p2}, Lcom/game/sdk/comon/view/CustomToast;->initView(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initView(Ljava/lang/String;I)V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    sget v1, Lcom/mobgame/R$layout;->toast_notify:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    sget v1, Lcom/mobgame/R$id;->tvDescription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    sget v2, Lcom/mobgame/R$id;->ivToast:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 64
    sget v3, Lcom/mobgame/R$id;->layoutToast:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    .line 65
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x57

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/mobgame/R$drawable;->bg_toast_err:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object p2, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/mobgame/R$drawable;->ic_toast_err:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0, p1, v1, v1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/mobgame/R$drawable;->bg_toast_warning:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object p2, p0, Lcom/game/sdk/comon/view/CustomToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/mobgame/R$drawable;->ic_warning:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0, p1, v1, v1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, p1, v1, v1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 97
    :goto_0
    invoke-virtual {p0, v1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/view/CustomToast;->setView(Landroid/view/View;)V

    return-void
.end method
