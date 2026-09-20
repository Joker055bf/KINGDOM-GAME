.class public Lcom/t4f/ad/permissions/TgsADPermissionsManageView;
.super Landroid/app/Dialog;
.source "TgsADPermissionsManageView.java"


# instance fields
.field private instance:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->instance:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p2}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->setCancelable(Z)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->setCanceledOnTouchOutside(Z)V

    .line 29
    sget p2, Lcom/t4f/android/R$layout;->tgs_ad_permissions_manage_dialog:I

    invoke-virtual {p0, p2}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->setContentView(I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->adjustViewHeight(Landroid/content/Context;)F

    .line 32
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/t4f/android/R$drawable;->tgs_ad_permissions_view_bg:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const p2, 0x3dcccccd

    .line 34
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 36
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    sget p1, Lcom/t4f/android/R$id;->buttonSave:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 40
    new-instance p2, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;

    invoke-direct {p2, p0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;-><init>(Lcom/t4f/ad/permissions/TgsADPermissionsManageView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget p1, Lcom/t4f/android/R$id;->buttonReject:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 65
    new-instance p2, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$2;

    invoke-direct {p2, p0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$2;-><init>(Lcom/t4f/ad/permissions/TgsADPermissionsManageView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/ad/permissions/TgsADPermissionsManageView;)Lcom/t4f/ad/permissions/TgsADPermissionsManageView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->instance:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    return-object p0
.end method

.method private adjustViewHeight(Landroid/content/Context;)F
    .locals 10

    .line 79
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    .line 83
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float v3, v1, v2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 90
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 93
    sget v7, Lcom/t4f/android/R$id;->ad_manage_dialog:I

    invoke-virtual {p0, v7}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    mul-float/2addr v6, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    sub-int/2addr p1, v6

    .line 95
    iput p1, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 97
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v3, p1

    if-gez p1, :cond_1

    const/high16 p1, 0x41a00000    # 20.0f

    mul-float/2addr p1, v3

    .line 103
    invoke-static {v5, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    mul-float/2addr v4, v3

    .line 104
    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 106
    sget v4, Lcom/t4f/android/R$id;->ad_manage_title_text_view:I

    invoke-virtual {p0, v4}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x2

    .line 107
    invoke-virtual {v4, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    sget p1, Lcom/t4f/android/R$id;->ad_manage_ad_storage_text_view:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v4, v3

    .line 110
    invoke-virtual {p1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 113
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    sget p1, Lcom/t4f/android/R$id;->ad_manage_line_view:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    sget p1, Lcom/t4f/android/R$id;->ad_manage_analytics_storage_view:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v5, v3

    .line 122
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 123
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    sget p1, Lcom/t4f/android/R$id;->ad_manage_user_data_view:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 126
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 128
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    sget p1, Lcom/t4f/android/R$id;->ad_manage_personalization_view:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 131
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 133
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    sget p1, Lcom/t4f/android/R$id;->buttonSave:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 136
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v5, 0x42280000    # 42.0f

    mul-float/2addr v3, v5

    .line 138
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 139
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    sget p1, Lcom/t4f/android/R$id;->buttonReject:I

    invoke-virtual {p0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 142
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 144
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 145
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    return v1

    .line 148
    :cond_1
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    return p1
.end method


# virtual methods
.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
