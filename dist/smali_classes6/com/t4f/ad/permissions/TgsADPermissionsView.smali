.class public Lcom/t4f/ad/permissions/TgsADPermissionsView;
.super Landroid/app/Dialog;
.source "TgsADPermissionsView.java"


# instance fields
.field private instance:Lcom/t4f/ad/permissions/TgsADPermissionsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView;->instance:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p0, p2}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->setCancelable(Z)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->setCanceledOnTouchOutside(Z)V

    .line 38
    sget v0, Lcom/t4f/android/R$layout;->tgs_ad_permissions_dialog:I

    invoke-virtual {p0, v0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->setContentView(I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->adjustSize(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/t4f/android/R$drawable;->tgs_ad_permissions_view_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3dcccccd

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 45
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    sget v0, Lcom/t4f/android/R$id;->buttonAccept:I

    invoke-virtual {p0, v0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    new-instance v1, Lcom/t4f/ad/permissions/TgsADPermissionsView$1;

    invoke-direct {v1, p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView$1;-><init>(Lcom/t4f/ad/permissions/TgsADPermissionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/t4f/android/R$id;->buttonManage:I

    invoke-virtual {p0, v0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    new-instance v1, Lcom/t4f/ad/permissions/TgsADPermissionsView$2;

    invoke-direct {v1, p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView$2;-><init>(Lcom/t4f/ad/permissions/TgsADPermissionsView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/t4f/android/R$id;->buttonRejectFirst:I

    invoke-virtual {p0, v0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    new-instance v1, Lcom/t4f/ad/permissions/TgsADPermissionsView$3;

    invoke-direct {v1, p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView$3;-><init>(Lcom/t4f/ad/permissions/TgsADPermissionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/t4f/android/R$string;->tgs_ad_permission_desc:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget v1, Lcom/t4f/android/R$string;->tgs_ad_permission_privacy:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p2

    .line 86
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 88
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v2, Lcom/t4f/ad/permissions/TgsADPermissionsView$4;

    invoke-direct {v2, p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView$4;-><init>(Lcom/t4f/ad/permissions/TgsADPermissionsView;Landroid/content/Context;)V

    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/16 v1, 0x21

    .line 115
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/t4f/android/R$id;->ad_permissions_des_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/ad/permissions/TgsADPermissionsView;)Lcom/t4f/ad/permissions/TgsADPermissionsView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView;->instance:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    return-object p0
.end method

.method private adjustSize(Landroid/content/Context;)V
    .locals 4

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 135
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 137
    sget v1, Lcom/t4f/android/R$id;->ad_permissions_linearLayout:I

    invoke-virtual {p0, v1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 138
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    sub-int/2addr v0, p1

    .line 139
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
