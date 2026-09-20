.class public final Lcom/vk/id/captcha/web/a/c;
.super Landroid/app/DialogFragment;
.source "VKCaptchaNoInternetFragment.kt"


# annotations
.annotation runtime Lcom/vk/id/captcha/api/common/InternalVKCaptchaApi;
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private d:Lcom/vk/id/captcha/web/a/a;


# direct methods
.method public static synthetic $r8$lambda$aSxh5E1nhvvsKD6_l6MZMP5yUug(Lcom/vk/id/captcha/web/a/c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/captcha/web/a/c;->a(Lcom/vk/id/captcha/web/a/c;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    sget-object v0, Lcom/vk/id/captcha/web/a/a$b;->INSTANCE:Lcom/vk/id/captcha/web/a/a$b;

    check-cast v0, Lcom/vk/id/captcha/web/a/a;

    iput-object v0, p0, Lcom/vk/id/captcha/web/a/c;->d:Lcom/vk/id/captcha/web/a/a;

    return-void
.end method

.method private final a()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/vk/id/captcha/web/a/c;->d:Lcom/vk/id/captcha/web/a/a;

    .line 88
    sget-object v1, Lcom/vk/id/captcha/web/a/a$a;->INSTANCE:Lcom/vk/id/captcha/web/a/a$a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v1, Lcom/vk/id/captcha/web/a/a$c;->INSTANCE:Lcom/vk/id/captcha/web/a/a$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/vk/id/captcha/web/a/c;->b()V

    .line 91
    sget-object v0, Lcom/vk/id/captcha/web/a/a$a;->INSTANCE:Lcom/vk/id/captcha/web/a/a$a;

    check-cast v0, Lcom/vk/id/captcha/web/a/a;

    iput-object v0, p0, Lcom/vk/id/captcha/web/a/c;->d:Lcom/vk/id/captcha/web/a/a;

    .line 92
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    sget-object v1, Lcom/vk/id/captcha/a$c;->INSTANCE:Lcom/vk/id/captcha/a$c;

    check-cast v1, Lcom/vk/id/captcha/a;

    invoke-virtual {v0, v1}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha$captcha_release(Lcom/vk/id/captcha/a;)V

    return-void

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/vk/id/captcha/web/a/c;->b()V

    .line 96
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    sget-object v1, Lcom/vk/id/captcha/a$a;->INSTANCE:Lcom/vk/id/captcha/a$a;

    check-cast v1, Lcom/vk/id/captcha/a;

    invoke-virtual {v0, v1}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha$captcha_release(Lcom/vk/id/captcha/a;)V

    return-void
.end method

.method private static final a(Lcom/vk/id/captcha/web/a/c;Landroid/view/View;)V
    .locals 0

    const-string p1, ""

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/vk/id/captcha/web/a/a$c;->INSTANCE:Lcom/vk/id/captcha/web/a/a$c;

    check-cast p1, Lcom/vk/id/captcha/web/a/a;

    iput-object p1, p0, Lcom/vk/id/captcha/web/a/c;->d:Lcom/vk/id/captcha/web/a/a;

    .line 57
    invoke-direct {p0}, Lcom/vk/id/captcha/web/a/c;->a()V

    return-void
.end method

.method private final b()V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/vk/id/captcha/R$anim;->fade_in:I

    sget v2, Lcom/vk/id/captcha/R$anim;->fade_out:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/Activity;->overrideActivityTransition(III)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/vk/id/captcha/R$anim;->fade_in:I

    sget v2, Lcom/vk/id/captcha/R$anim;->fade_out:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 83
    invoke-direct {p0}, Lcom/vk/id/captcha/web/a/c;->a()V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 63
    new-instance p1, Lcom/vk/id/captcha/web/a/b;

    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/vk/id/captcha/web/a/b;-><init>(Landroid/app/Activity;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 46
    sget p3, Lcom/vk/id/captcha/R$layout;->vk_captcha_no_internet_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 48
    sget p3, Lcom/vk/id/captcha/R$id;->vkid_logo:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    iput-object p3, p0, Lcom/vk/id/captcha/web/a/c;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 49
    sget p3, Lcom/vk/id/captcha/R$id;->antenna:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    move-object p3, p2

    :goto_2
    iput-object p3, p0, Lcom/vk/id/captcha/web/a/c;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 50
    sget p2, Lcom/vk/id/captcha/R$id;->retry_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    :cond_3
    iput-object p2, p0, Lcom/vk/id/captcha/web/a/c;->c:Landroid/widget/Button;

    .line 52
    iget-object p2, p0, Lcom/vk/id/captcha/web/a/c;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    sget p3, Lcom/vk/id/captcha/R$drawable;->logo_vkid:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :cond_4
    iget-object p2, p0, Lcom/vk/id/captcha/web/a/c;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    sget p3, Lcom/vk/id/captcha/R$drawable;->antenna:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    :cond_5
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_6
    iget-object p2, p0, Lcom/vk/id/captcha/web/a/c;->c:Landroid/widget/Button;

    if-eqz p2, :cond_7

    new-instance p3, Lcom/vk/id/captcha/web/a/c$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/vk/id/captcha/web/a/c$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/captcha/web/a/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 78
    invoke-direct {p0}, Lcom/vk/id/captcha/web/a/c;->a()V

    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 37
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method

.method public final show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 73
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
