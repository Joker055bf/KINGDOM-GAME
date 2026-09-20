.class public Lcom/applovin/impl/b/b/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b/b/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/RelativeLayout;

.field private final b:Lcom/applovin/impl/b/b/g;

.field private final c:Lcom/applovin/impl/b/b/c;

.field private final d:Lcom/applovin/impl/b/b/a;

.field private final e:Lcom/applovin/impl/b/b/b;

.field private final f:Lcom/applovin/impl/b/b/f;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/applovin/impl/b/a/h;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/b/b/e$a;)V
    .locals 9

    const v0, 0x103000a

    .line 83
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 85
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 86
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 172
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 88
    invoke-virtual {p0, v0}, Lcom/applovin/impl/b/b/e;->requestWindowFeature(I)Z

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0, v3}, Lcom/applovin/impl/b/b/e;->setCancelable(Z)V

    .line 91
    new-instance v5, Lcom/applovin/impl/b/b/g;

    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p3}, Lcom/applovin/impl/b/b/g;-><init>(Landroid/content/Context;Lcom/applovin/impl/b/a/h;)V

    iput-object v5, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    .line 92
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/applovin/impl/b/b/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPrivacyPolicySwitch()Landroid/widget/Switch;

    move-result-object v6

    new-instance v7, Lcom/applovin/impl/b/b/e$1;

    invoke-direct {v7, p0}, Lcom/applovin/impl/b/b/e$1;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getContinueButton()Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/applovin/impl/b/b/e$5;

    invoke-direct {v7, p0, p5}, Lcom/applovin/impl/b/b/e$5;-><init>(Lcom/applovin/impl/b/b/e;Lcom/applovin/impl/b/b/e$a;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/applovin/impl/b/b/e$6;

    invoke-direct {v7, p0}, Lcom/applovin/impl/b/b/e$6;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/applovin/sdk/R$string;->applovin_gdpr_main_screen_personalized_advertising_purposes_switch_text:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 130
    new-instance v8, Lcom/applovin/impl/b/b/e$7;

    invoke-direct {v8, p0}, Lcom/applovin/impl/b/b/e$7;-><init>(Lcom/applovin/impl/b/b/e;)V

    .line 138
    invoke-static {v7, v6, v8, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 139
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPersonalizedAdvertisingSwitchTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPersonalizedAdvertisingSwitchTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 142
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/applovin/sdk/R$string;->applovin_gdpr_main_screen_analytics_purposes_switch_text:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 145
    new-instance v8, Lcom/applovin/impl/b/b/e$8;

    invoke-direct {v8, p0}, Lcom/applovin/impl/b/b/e$8;-><init>(Lcom/applovin/impl/b/b/e;)V

    .line 153
    invoke-static {v7, v6, v8, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 154
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getAnalyticsPurposesSwitchTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getAnalyticsPurposesSwitchTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    new-instance v6, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/applovin/sdk/R$string;->applovin_gdpr_main_screen_privacy_policy_switch_text:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/applovin/sdk/R$string;->applovin_privacy_policy_text:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 160
    new-instance v8, Lcom/applovin/impl/b/b/e$9;

    invoke-direct {v8, p0, p4, p1}, Lcom/applovin/impl/b/b/e$9;-><init>(Lcom/applovin/impl/b/b/e;Lcom/applovin/impl/sdk/p;Landroid/app/Activity;)V

    .line 168
    invoke-static {v6, v7, v8, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 169
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPrivacyPolicySwitchTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPrivacyPolicySwitchTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 172
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPersonalizedAdvertisingSwitch()Landroid/widget/Switch;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/sdk/c/d;->v:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p4, v6, v2}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getAnalyticsPurposesSwitch()Landroid/widget/Switch;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/sdk/c/d;->w:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p4, v6, v2}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 174
    invoke-virtual {v5}, Lcom/applovin/impl/b/b/g;->getPrivacyPolicySwitch()Landroid/widget/Switch;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/sdk/c/d;->x:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p4, v6, v2}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    new-instance v0, Lcom/applovin/impl/b/b/c;

    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p3}, Lcom/applovin/impl/b/b/c;-><init>(Landroid/content/Context;Lcom/applovin/impl/b/a/h;)V

    iput-object v0, p0, Lcom/applovin/impl/b/b/e;->c:Lcom/applovin/impl/b/b/c;

    .line 177
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/b/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v0}, Lcom/applovin/impl/b/b/c;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    new-instance v6, Lcom/applovin/impl/b/b/e$10;

    invoke-direct {v6, p0}, Lcom/applovin/impl/b/b/e$10;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v0}, Lcom/applovin/impl/b/b/c;->getUnderstandAndConfirmButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/applovin/impl/b/b/e$11;

    invoke-direct {v2, p0, p5}, Lcom/applovin/impl/b/b/e$11;-><init>(Lcom/applovin/impl/b/b/e;Lcom/applovin/impl/b/b/e$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance p5, Lcom/applovin/impl/b/b/a;

    invoke-direct {p5, p1, p3, p4}, Lcom/applovin/impl/b/b/a;-><init>(Landroid/app/Activity;Lcom/applovin/impl/b/a/h;Lcom/applovin/impl/sdk/p;)V

    iput-object p5, p0, Lcom/applovin/impl/b/b/e;->d:Lcom/applovin/impl/b/b/a;

    .line 201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p5, v0}, Lcom/applovin/impl/b/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {p5}, Lcom/applovin/impl/b/b/a;->getBackButton()Landroid/widget/Button;

    move-result-object p5

    new-instance v0, Lcom/applovin/impl/b/b/e$12;

    invoke-direct {v0, p0}, Lcom/applovin/impl/b/b/e$12;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance p5, Lcom/applovin/impl/b/b/b;

    invoke-direct {p5, p1, p3, p4}, Lcom/applovin/impl/b/b/b;-><init>(Landroid/app/Activity;Lcom/applovin/impl/b/a/h;Lcom/applovin/impl/sdk/p;)V

    iput-object p5, p0, Lcom/applovin/impl/b/b/e;->e:Lcom/applovin/impl/b/b/b;

    .line 212
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p5, p1}, Lcom/applovin/impl/b/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {p5}, Lcom/applovin/impl/b/b/b;->getBackButton()Landroid/widget/Button;

    move-result-object p1

    new-instance p4, Lcom/applovin/impl/b/b/e$2;

    invoke-direct {p4, p0}, Lcom/applovin/impl/b/b/e$2;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    new-instance p1, Lcom/applovin/impl/b/b/f;

    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4, p3}, Lcom/applovin/impl/b/b/f;-><init>(Landroid/content/Context;Lcom/applovin/impl/b/a/h;)V

    iput-object p1, p0, Lcom/applovin/impl/b/b/e;->f:Lcom/applovin/impl/b/b/f;

    .line 223
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Lcom/applovin/impl/b/b/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {p1}, Lcom/applovin/impl/b/b/f;->getBackButton()Landroid/widget/Button;

    move-result-object p1

    new-instance p3, Lcom/applovin/impl/b/b/e$3;

    invoke-direct {p3, p0}, Lcom/applovin/impl/b/b/e$3;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    .line 234
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    invoke-virtual {v5, p1}, Lcom/applovin/impl/b/b/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applovin/impl/b/b/e;->a:Landroid/widget/RelativeLayout;

    .line 238
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 239
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 241
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 243
    iput v3, p0, Lcom/applovin/impl/b/b/e;->g:I

    .line 245
    invoke-direct {p0, p2}, Lcom/applovin/impl/b/b/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 374
    iget-object p1, p0, Lcom/applovin/impl/b/b/e;->f:Lcom/applovin/impl/b/b/f;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 378
    iget-object p1, p0, Lcom/applovin/impl/b/b/e;->d:Lcom/applovin/impl/b/b/a;

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 382
    iget-object p1, p0, Lcom/applovin/impl/b/b/e;->e:Lcom/applovin/impl/b/b/b;

    return-object p1

    .line 386
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/b/b/e;->c:Lcom/applovin/impl/b/b/c;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/g;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "current_showing_view_id"

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0, v0}, Lcom/applovin/impl/b/b/e;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b/b/e;->a(Landroid/view/View;I)V

    :cond_1
    const-string v0, "advertising_partners_switch_state"

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v1}, Lcom/applovin/impl/b/b/g;->getPersonalizedAdvertisingSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "analytics_partners_switch_state"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v1}, Lcom/applovin/impl/b/b/g;->getAnalyticsPurposesSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "privacy_policy_switch_state"

    .line 296
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/g;->getPrivacyPolicySwitch()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 351
    iput p1, p0, Lcom/applovin/impl/b/b/e;->g:I

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 363
    iput p2, p0, Lcom/applovin/impl/b/b/e;->g:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/b/b/e;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/applovin/impl/b/b/e;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/b/b/e;Landroid/view/View;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/b/b/e;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/b/b/e;->c:Lcom/applovin/impl/b/b/c;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 302
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->getOrientation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v2, v3

    const-wide v3, 0x3fc999999999999aL    # 0.2

    if-eqz v2, :cond_1

    const-wide v5, 0x3fa999999999999aL    # 0.05

    if-eqz v1, :cond_3

    move-wide v3, v5

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const-wide v3, 0x3fb999999999999aL    # 0.1

    move-wide v5, v3

    goto :goto_1

    :cond_2
    const-wide v5, 0x3fb3333333333333L    # 0.075

    .line 334
    :cond_3
    :goto_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 335
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v2, v0

    mul-double/2addr v2, v5

    double-to-int v0, v2

    .line 337
    iget-object v2, p0, Lcom/applovin/impl/b/b/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 338
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 339
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/g;->a()V

    .line 342
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->c:Lcom/applovin/impl/b/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/c;->a()V

    .line 343
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->f:Lcom/applovin/impl/b/b/f;

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/f;->a()V

    .line 344
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->d:Lcom/applovin/impl/b/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/a;->a()V

    .line 345
    iget-object v0, p0, Lcom/applovin/impl/b/b/e;->e:Lcom/applovin/impl/b/b/b;

    invoke-virtual {v0}, Lcom/applovin/impl/b/b/b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/f;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/b/b/e;->f:Lcom/applovin/impl/b/b/f;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/b/b/e;->d:Lcom/applovin/impl/b/b/a;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/b/b/e;)Lcom/applovin/impl/b/b/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/b/b/e;->e:Lcom/applovin/impl/b/b/b;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/b/b/e;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/applovin/impl/b/b/e;->b()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "current_showing_view_id"

    .line 251
    iget v2, p0, Lcom/applovin/impl/b/b/e;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    iget-object v1, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v1}, Lcom/applovin/impl/b/b/g;->getPersonalizedAdvertisingSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "advertising_partners_switch_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    iget-object v1, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v1}, Lcom/applovin/impl/b/b/g;->getAnalyticsPurposesSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "analytics_partners_switch_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    iget-object v1, p0, Lcom/applovin/impl/b/b/e;->b:Lcom/applovin/impl/b/b/g;

    invoke-virtual {v1}, Lcom/applovin/impl/b/b/g;->getPrivacyPolicySwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "privacy_policy_switch_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 261
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/e;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/b/b/e$4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/b/b/e$4;-><init>(Lcom/applovin/impl/b/b/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 275
    invoke-direct {p0}, Lcom/applovin/impl/b/b/e;->b()V

    .line 276
    iget-object p1, p0, Lcom/applovin/impl/b/b/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/b/b/e;->setContentView(Landroid/view/View;)V

    return-void
.end method
