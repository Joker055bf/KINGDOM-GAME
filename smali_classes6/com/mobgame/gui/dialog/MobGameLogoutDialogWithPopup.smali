.class public Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;
.super Landroid/app/DialogFragment;
.source "MobGameLogoutDialogWithPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MobGameLogoutDialogWithPopup"


# instance fields
.field activity:Landroid/app/Activity;

.field eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

.field private urlBanner:Ljava/lang/String;

.field private urlToOpen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->activity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->urlBanner:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->urlToOpen:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    const p2, 0x1030011

    const/4 p3, 0x1

    .line 40
    invoke-virtual {p0, p3, p2}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->setStyle(II)V

    const-string p2, "shared_pref_show_dashboard"

    .line 41
    invoke-static {p1, p2, p3}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->urlToOpen:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 46
    sget p3, Lcom/mobgame/R$layout;->dialog_logout_popup:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const p3, 0x106000d

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p3}, Landroid/view/Window;->setLayout(II)V

    .line 51
    :try_start_0
    sget p2, Lcom/mobgame/R$id;->btn_giftcode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 52
    sget p3, Lcom/mobgame/R$id;->btn_fanpage:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 53
    sget v0, Lcom/mobgame/R$id;->btn_logout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    sget v1, Lcom/mobgame/R$id;->btn_close:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 55
    sget v2, Lcom/mobgame/R$id;->iv_banner:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 56
    sget v3, Lcom/mobgame/R$id;->layout_main_logout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 59
    iget-object v4, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->urlBanner:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v4}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    .line 61
    iget-object v5, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->urlBanner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    :cond_0
    new-instance v4, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;

    invoke-direct {v4, p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;-><init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v2, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$2;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$2;-><init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance p3, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$3;

    invoke-direct {p3, p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$3;-><init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;-><init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;-><init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V

    invoke-virtual {v3, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$6;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$6;-><init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->activity:Landroid/app/Activity;

    sget p3, Lcom/mobgame/R$string;->logout:I

    invoke-static {p2, p3}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 124
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
